# 2025-10-22T14:58:34.265697400
import vitis

client = vitis.create_client()
client.set_workspace(path="sha256")

comp = client.create_hls_component(name = "hmac_sha256_test",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="hmac_sha256_test")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

