# 2025-10-22T17:32:39.216664200
import vitis

client = vitis.create_client()
client.set_workspace(path="complex_fixed_arch0")

comp = client.get_component(name="cholesky_test")
comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

client.delete_component(name="cholesky_test")

comp = client.create_hls_component(name = "cholesky_test",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

