# 2025-10-24T22:20:47.557321700
import vitis

client = vitis.create_client()
client.set_workspace(path="lz4_compress")

comp = client.get_component(name="lz4_compress_test_Config")
comp.run(operation="SYNTHESIS")

