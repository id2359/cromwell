version biscayne

# Is there a better way to test this?
import "https://raw.githubusercontent.com/broadinstitute/cromwell/cjl_relative_imports/womtool/src/test/resources/validate/biscayne/valid/relative_imports/sub_wfs/foo.wdl"

workflow http_relative_imports {
  call foo.foo_wf

  output {
    Int result = foo_wf.unpacked
  }
}