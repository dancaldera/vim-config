const isMac = process.platform === 'darwin'
const isLinux = process.platform === 'linux'

if (isMac) {
  console.log('This is a Mac system.')
} else if (isLinux) {
  console.log('This is a Linux system.')
} else {
  console.log('This is neither a Mac nor a Linux system.')
}
