get_filename_component(IKUY_PATH ./programs_host/ REALPATH)

get_filename_component(COMPILER_PATH ${IKUY_PATH}/compilers/aarch64-none-elf REALPATH)

set(GCC_VERSION "10.2.0")
set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_ADDR2LINE ${COMPILER_PATH}/bin/aarch64-none-elf-addr2line)
set(CMAKE_AR ${COMPILER_PATH}/bin/aarch64-none-elf-ar)
set(CMAKE_RANLIB ${COMPILER_PATH}/bin/aarch64-none-elf-ranlib)
set(CMAKE_NM ${COMPILER_PATH}/bin/aarch64-none-elf-nm)
set(CMAKE_OBJCOPY ${COMPILER_PATH}/bin/aarch64-none-elf-objcopy)
set(CMAKE_OBJDUMP ${COMPILER_PATH}/bin/aarch64-none-elf-objdump)
set(CMAKE_READELF ${COMPILER_PATH}/bin/aarch64-none-elf-readelf)
set(CMAKE_STRIP ${COMPILER_PATH}/bin/aarch64-none-elf-strip)
set(CMAKE_ASM_COMPILER ${COMPILER_PATH}/bin/aarch64-none-elf-gcc)
set(CMAKE_C_COMPILER ${COMPILER_PATH}/bin/aarch64-none-elf-gcc)
set(CMAKE_C_COMPILER_AR ${COMPILER_PATH}/bin/aarch64-none-elf-ar)
set(CMAKE_C_COMPILER_RANLIB ${COMPILER_PATH}/bin/aarch64-none-elf-ranlib)


set(CMAKE_LINKER ${COMPILER_PATH}/bin/aarch64-none-elf-ld)

# TODO 
set(CPU_SETTINGS "-Wl,--build-id")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -ggdb")
set(CMAKE_ASM_FLAGS "${CMAKE_C_FLAGS} -flto -ffat-lto-objects")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${CPU_SETTINGS}")

set(CMAKE_C_STANDARD_INCLUDE_DIRECTORIES
			${COMPILER_PATH}/lib/gcc/aarch64-none-elf/${GCC_VERSION}/include
      		${COMPILER_PATH}/lib/gcc/aarch64-none-elf/${GCC_VERSION}/include-fixed)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -ggdb")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -flto -ffat-lto-objects")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -nostartfiles -nostdlib -nostdinc -ffreestanding")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wpedantic -Wno-builtin-declaration-mismatch")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CPU_SETTINGS} -std=gnu2x")

set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES
		${COMPILER_PATH}/lib/gcc/aarch64-none-elf/${GCC_VERSION}/include
		${COMPILER_PATH}/lib/gcc/aarch64-none-elf/${GCC_VERSION}/include-fixed)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -ggdb")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -flto -ffat-lto-objects")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostartfiles -nostdlib -nostdinc -ffreestanding -fno-rtti -fno-exceptions")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wpedantic -Wno-builtin-declaration-mismatch")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CPU_SETTINGS} -std=gnu++20")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -nostartfiles -nostdlib -nostdinc -lgcc")
