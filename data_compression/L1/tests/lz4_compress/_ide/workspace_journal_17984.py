# 2025-10-27T22:45:51.306944500
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

comp = client.get_component(name="lz4_compress_test_Config")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

