export default function ({ redirect }) {
  if (process.client) {
    // クライアントサイドでのみ実行
    redirect('/home') // 最初に表示する画面のパスにリダイレクト
  }
}
