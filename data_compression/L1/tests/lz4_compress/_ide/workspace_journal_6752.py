# 2025-10-28T20:41:02.337612500
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

comp = client.get_component(name="lz4_compress_configed")
comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

vitis.dispose()

