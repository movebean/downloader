env
set -x
coscmd config -a "${secretId}" -s "${secretKey}" -t "${token}" -b "${bucket}" -r "${region}"
coscmd download -f "${cosFile}" "/output/${cosFile}"
