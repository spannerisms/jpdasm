import hashlib
import logging
import os

JAP10HASH = '03a63945398191337e896e5771f77173'

bins_to_extract = {
    "bin/gfx/link.4bpp": (0x080000, 0x086FFF),
    "bin/gfx/GFX73.3bpp": (0x087000, 0x0875FF),
    "bin/gfx/GFX74.3bpp": (0x087600, 0x087BFF),
    "bin/gfx/GFX75.3bpp": (0x087C00, 0x0881FF),
    "bin/gfx/GFX76.3bpp": (0x088200, 0x0887FF),
    "bin/gfx/GFX77.3bpp": (0x088800, 0x088DFF),
    "bin/gfx/GFX78.3bpp": (0x088E00, 0x0893FF),
    "bin/gfx/GFX79.3bpp": (0x089400, 0x0899FF),
    "bin/gfx/GFX7A.3bpp": (0x089A00, 0x089FFF),
    "bin/gfx/GFX7B.3bpp": (0x08A000, 0x08A5FF),
    "bin/gfx/GFX7C.3bpp": (0x08A600, 0x08ABFF),
    "bin/gfx/GFX7D.3bpp": (0x08AC00, 0x08B1FF),
    "bin/gfx/GFX7E.3bpp": (0x08B200, 0x08B7FF),
    "bin/brr/noise.brr": (0x0C8078, 0x0C80BF),
    "bin/brr/rain.brr": (0x0C80C0, 0x0C8869),
    "bin/brr/timpani.brr": (0x0C886A, 0x0C940C),
    "bin/brr/square.brr": (0x0C940D, 0x0C944B),
    "bin/brr/saw.brr": (0x0C944C, 0x0C948A),
    "bin/brr/clink.brr": (0x0C948B, 0x0C94ED),
    "bin/brr/doublesawA.brr": (0x0C94EE, 0x0C9586),
    "bin/brr/doublesawB.brr": (0x0C9587, 0x0C9628),
    "bin/brr/tweet.brr": (0x0C9629, 0x0C9BA4),
    "bin/brr/strings.brr": (0x0C9BA5, 0x0CA924),
    "bin/brr/trombone.brr": (0x0CA925, 0x0CAD4A),
    "bin/brr/cymbal.brr": (0x0CAD4B, 0x0CBADC),
    "bin/brr/ocarina.brr": (0x0CBADD, 0x0CBC7A),
    "bin/brr/chime.brr": (0x0CBC7B, 0x0CBD52),
    "bin/brr/harp.brr": (0x0CBD53, 0x0CBF38),
    "bin/brr/splash.brr": (0x0CBF39, 0x0CC6F4),
    "bin/brr/trumpet.brr": (0x0CC6F5, 0x0CCDFC),
    "bin/brr/horn.brr": (0x0CCDFD, 0x0CD504),
    "bin/brr/snare.brr": (0x0CD505, 0x0CE233),
    "bin/brr/choir.brr": (0x0CE234, 0x0CEF2C),
    "bin/brr/flute.brr": (0x0CEF2D, 0x0CF163),
    "bin/brr/OOF.brr": (0x0CF164, 0x0CF3A3),
    "bin/brr/guitar.brr": (0x0CF3A4, 0X0CFB17),
}


def extract():
    file = "alttp.sfc"
    rom = LocalRom(file)

    for bin_file, addrs in bins_to_extract.items():
        with open(bin_file, 'wb') as outfile:
            outfile.write(rom.buffer[addrs[0]:addrs[1]+1])


class LocalRom(object):

    def __init__(self, file, patch=True, name=None, hash=None):
        self.name = name
        self.hash = hash
        self.orig_buffer = None
        self.file = file
        self.has_smc_header = False
        if not os.path.isfile(file):
            raise RuntimeError("Could not find valid local base rom for patching at expected path %s." % file)
        with open(file, 'rb') as stream:
            self.buffer, self.has_smc_header = read_rom(stream)
        if patch:
            self.patch_base_rom()
            self.orig_buffer = self.buffer.copy()

    def patch_base_rom(self):
        # verify correct checksum of baserom
        basemd5 = hashlib.md5()
        basemd5.update(self.buffer)
        if JAP10HASH != basemd5.hexdigest():
            logging.getLogger('').warning('Supplied Base Rom does not match known MD5 for JAP(1.0) release. Will try to patch anyway.')


def read_rom(stream):
    "Reads rom into bytearray and strips off any smc header"
    buffer = bytearray(stream.read())
    has_smc_header = False
    if len(buffer)%0x400 == 0x200:
        buffer = buffer[0x200:]
        has_smc_header = True
    return buffer, has_smc_header


if __name__ == '__main__':
    extract()