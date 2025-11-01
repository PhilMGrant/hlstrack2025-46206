# 2025-10-31T13:24:58.690568500
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

comp = client.get_component(name="lz4_compress_configed")
comp.run(operation="CO_SIMULATION")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

