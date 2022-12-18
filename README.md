# buildroot-mmdvm

MMDVM-suite install helper for buildroot

## Usage

```
$ cd /path/to/buildroot
$ make BR2_EXTERNAL=/path/to/buildroot-mmdvm menuconfig
$ make
```

## Hint

- Do not forget "Enable C++ support" in Toolchain menu.
- Configuration files (MMDVM.ini, DMRGateway.ini, etc) are installed into /etc. FileLevel at [Log] section is modified to 0 to save disk usage.
- Binary files (MMDVMHost, DMRGateway, etc) are installed into /usr/bin.

## License

[WTFPL](http://www.wtfpl.net/)
