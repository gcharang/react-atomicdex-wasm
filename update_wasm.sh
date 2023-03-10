[ ! -d wasm_versions ] && mkdir wasm_versions
cd wasm_versions
fn=${1##*/}
[ ! -f $fn ] && wget $1
mkdir temp
unzip $fn -d temp
cd temp
mv mm2lib_bg.wasm ../../public/mm2_bg.wasm
mv mm2lib.js ../../src/js/mm2.js
cp -r snippets/* ../../src/js/snippets/
cd ..
rm -rf temp
