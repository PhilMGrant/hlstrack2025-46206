# 2025-10-22T16:48:46.170457500
import vitis

client = vitis.create_client()
client.set_workspace(path="complex_fixed_arch0")

comp = client.create_hls_component(name = "cholesky_test",cfg_file = ["cholesky_test.cfg"],template = "empty_hls_component")

comp = client.get_component(name="cholesky_test")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

