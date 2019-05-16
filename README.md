此為修改好app.py和test_app.py之文件。

app.py 內容為Line chatbot 的主程式，功能為Line接收到使用者訊息時，經過判斷後跟Mariadb互動後再將結果回傳給使用者。
test_app.py 內容為單元測試，測試app.py的def 功能，如與SQL的查詢、Line chatbot api等測試。

1. 用git clone https://github.com/iii-cutting-edge-tech-lab/Chatbot_project_dc101.git 從master取得主程式

2. cd 到此專案後git branch確認在哪個分支

3. 使用git checkout -b dev 切換到分支或新增分支再次使用git branch確認在哪個分支

4. 使用git add -A 全部打包，新增敘述 git commit -m “敘述” 

5. 使用git push origin dev 將檔案上傳至目前分支

