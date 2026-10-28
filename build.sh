#!/bin/sh
set -eu

cd "$(dirname "$0")"
: "${CC:=cc}"
OBJECT_DIR=$(mktemp -d "${TMPDIR:-/tmp}/modulon-build.XXXXXX")
trap 'rm -rf "$OBJECT_DIR"' EXIT
trap 'exit 1' HUP INT TERM

START=$(date +%s%N)
CFLAGS="${CFLAGS:-} -std=c11 -Wall -Wextra -Wno-unused-parameter -Iinclude"
log()
{
	NOW=$(date +%s%N)
	ELAPSED=$((NOW - START))
	SECONDS=$((ELAPSED / 1000000000))
	MILLISECONDS=$((ELAPSED / 1000000 % 1000))
	printf "[%d:%03d] %s\n" "$SECONDS" "$MILLISECONDS" "$1"
}

log "Modulon build start"
log "Init bin/"
mkdir -p bin
log "CC=$CC"
log "Compiling source code..."
log "CC src/assembler.c"
$CC $CFLAGS -c src/assembler.c -o "$OBJECT_DIR/assembler.o"
log "CC src/ast.c"
$CC $CFLAGS -c src/ast.c -o "$OBJECT_DIR/ast.o"
log "CC src/codegen.c"
$CC $CFLAGS -c src/codegen.c -o "$OBJECT_DIR/codegen.o"
log "CC src/common.c"
$CC $CFLAGS -c src/common.c -o "$OBJECT_DIR/common.o"
log "CC src/i386.c"
$CC $CFLAGS -c src/i386.c -o "$OBJECT_DIR/i386.o"
log "CC src/jit.c"
$CC $CFLAGS -c src/jit.c -o "$OBJECT_DIR/jit.o"
log "CC src/lexer.c"
$CC $CFLAGS -c src/lexer.c -o "$OBJECT_DIR/lexer.o"
log "CC src/main.c"
$CC $CFLAGS -c src/main.c -o "$OBJECT_DIR/main.o"
log "CC src/parser.c"
$CC $CFLAGS -c src/parser.c -o "$OBJECT_DIR/parser.o"
log "CC src/type.c"
$CC $CFLAGS -c src/type.c -o "$OBJECT_DIR/type.o"
log "Linking object files..."
log "Linking bin/mlonc"
$CC ${LDFLAGS:-} "$OBJECT_DIR"/*.o -o bin/mlonc -ldl
log "Modulon build end"
echo "Modulon compiler ready at bin/mlonc"
