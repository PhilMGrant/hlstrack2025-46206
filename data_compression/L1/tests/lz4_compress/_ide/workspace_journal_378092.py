# 2025-10-29T16:49:15.970368
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

vitis.dispose()

comp = client.get_component(name="lz4_compress_test_Config")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

