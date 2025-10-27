import subprocess
import urllib

GITHUB_URL = "https://github.com"

ret_code, user_input = dialog.input_dialog(title="GitHub search")

if ret_code == 0:
    encoded_user_input = urllib.parse.quote(user_input)
    # search_url = f"https://cc-github.bmwgroup.net/search?q={encoded_user_input}"
    search_url = f"{GITHUB_URL}/search?q={encoded_user_input}&type=code"
    subprocess.Popen(["google-chrome", search_url])
