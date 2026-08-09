# LaTeX Report Template

Template **LaTeX** dành cho việc xây dựng các báo cáo học thuật bằng tiếng Việt, phù hợp với:

* Đồ án tốt nghiệp
* Tiểu luận
* Báo cáo nghiên cứu khoa học
* Báo cáo môn học
* Báo cáo kỹ thuật

Project được tổ chức theo dạng module, tách riêng **cấu hình**, **thông tin báo cáo**, **nội dung chương**, **tài liệu tham khảo** và **phụ lục**, giúp dễ chỉnh sửa, bảo trì và tái sử dụng cho nhiều đề tài khác nhau.

---

## Cấu trúc project

```text
latex-report-template/
├── main.tex
├── references.bib
├── build.ps1
├── latexmkrc
│
├── config/
│   ├── packages.tex
│   ├── settings.tex
│   ├── commands.tex
│   ├── listings.tex
│   ├── images.tex
│   └── info.tex
│
├── chapters/
│   ├── 00_bia.tex
│   ├── 00_loi_cam_doan.tex
│   ├── 00_loi_cam_on.tex
│   ├── 00_tom_tat.tex
│   ├── 00_danh_muc_tu_viet_tat.tex
│   ├── 01_loi_mo_dau.tex
│   └── 02_chuong_mau.tex
│
└── appendix/
    └── appendix_a_vi_du.tex
```

---

## `main.tex`

`main.tex` là file gốc của toàn bộ tài liệu.

File này chịu trách nhiệm:

* nạp các package;
* nạp cấu hình trình bày;
* nạp thông tin báo cáo;
* tạo trang bìa;
* tạo lời cam đoan và lời cảm ơn;
* tạo phần tóm tắt;
* tạo danh mục từ viết tắt;
* tạo mục lục;
* tạo danh mục hình và bảng;
* nạp các chương;
* tạo tài liệu tham khảo;
* nạp phụ lục.

Thông thường bạn chỉ cần chỉnh `main.tex` khi muốn **thêm, xoá hoặc thay đổi thứ tự các chương**.

---

## Cấu hình

Các thiết lập chung nằm trong thư mục:

```text
config/
```

### `config/info.tex`

Chứa thông tin của báo cáo:

```latex
\newcommand{\reporttype}{ĐỒ ÁN TỐT NGHIỆP}
\newcommand{\reporttitle}{TÊN ĐỀ TÀI}

\newcommand{\studentname}{Họ và tên sinh viên}
\newcommand{\studentid}{Mã số sinh viên}

\newcommand{\advisorname}{Họ và tên giảng viên hướng dẫn}

\newcommand{\faculty}{Khoa Viễn thông II}

\newcommand{\institution}{
  Học viện Công nghệ Bưu chính Viễn thông (PTIT)
}

\newcommand{\academicyear}{20XX - 20XX}
```

Một số loại báo cáo có thể sử dụng:

```text
ĐỒ ÁN TỐT NGHIỆP
TIỂU LUẬN
BÁO CÁO NGHIÊN CỨU KHOA HỌC
```

---

### `config/packages.tex`

Quản lý các package LaTeX được sử dụng trong tài liệu.

Ví dụ:

```latex
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{booktabs}
```

Việc gom package vào một file riêng giúp `main.tex` gọn hơn và dễ quản lý dependency.

---

### `config/settings.tex`

Chứa các thiết lập trình bày chung như:

* khổ giấy;
* lề trang;
* font chữ;
* kích thước chữ;
* giãn dòng;
* paragraph;
* header/footer;
* đánh số trang;
* heading.

Nếu cần điều chỉnh template theo quy định của trường hoặc khoa, đây thường là file cần chỉnh nhiều nhất.

---

### `config/commands.tex`

Chứa các macro LaTeX dùng chung trong toàn bộ báo cáo.

Việc định nghĩa macro giúp tránh lặp code và giữ cách trình bày nhất quán.

---

### `config/listings.tex`

Quản lý cách hiển thị source code trong tài liệu.

Có thể cấu hình:

* font;
* line number;
* syntax highlighting;
* frame;
* khoảng cách;
* caption.

---

### `config/images.tex`

Chứa các thiết lập hoặc command hỗ trợ việc quản lý hình ảnh.

---

## Viết nội dung

Nội dung chính của báo cáo được đặt trong:

```text
chapters/
```

Template cung cấp hai chương mẫu:

```text
01_loi_mo_dau.tex
02_chuong_mau.tex
```

### `01_loi_mo_dau.tex`

Có thể sử dụng làm khuôn cho chương mở đầu với các nội dung như:

* lý do chọn đề tài;
* mục tiêu nghiên cứu;
* phạm vi nghiên cứu;
* phương pháp thực hiện;
* cấu trúc báo cáo.

### `02_chuong_mau.tex`

Minh hoạ cách trình bày các thành phần thường gặp trong báo cáo:

* heading;
* đoạn văn;
* danh sách;
* hình ảnh;
* bảng;
* source code;
* công thức toán;
* phương trình;
* trích dẫn tài liệu.

---

## Thêm chương mới

Ví dụ báo cáo có cấu trúc:

```text
01_loi_mo_dau.tex
02_co_so_ly_thuyet.tex
03_thiet_ke_he_thong.tex
04_trien_khai.tex
05_ket_qua.tex
06_ket_luan.tex
```

Tạo các file tương ứng trong:

```text
chapters/
```

Sau đó thêm vào `main.tex`:

```latex
\input{chapters/01_loi_mo_dau}
\input{chapters/02_co_so_ly_thuyet}
\input{chapters/03_thiet_ke_he_thong}
\input{chapters/04_trien_khai}
\input{chapters/05_ket_qua}
\input{chapters/06_ket_luan}
```

Template không cố định số lượng chương vì cấu trúc của **đồ án, tiểu luận và báo cáo NCKH** có thể khác nhau.

---

## Hình ảnh

Có thể tổ chức hình ảnh trong một thư mục riêng, ví dụ:

```text
images/
├── diagrams/
├── screenshots/
└── results/
```

Ví dụ chèn ảnh:

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{images/example.png}
    \caption{Ví dụ hình minh hoạ}
    \label{fig:example}
\end{figure}
```

Tham chiếu:

```latex
Hình~\ref{fig:example}
```

---

## Bảng

Ví dụ:

```latex
\begin{table}[htbp]
    \centering
    \caption{Ví dụ bảng dữ liệu}
    \label{tab:example}

    \begin{tabular}{lll}
        \toprule
        Thành phần & Giá trị & Ghi chú \\
        \midrule
        Router & Cisco IOS & Layer 3 \\
        Switch & Cisco IOS & Layer 2 \\
        Server & Linux & Ubuntu \\
        \bottomrule
    \end{tabular}
\end{table}
```

Tham chiếu:

```latex
Bảng~\ref{tab:example}
```

---

## Công thức toán

Ví dụ:

```latex
\begin{equation}
    C = B \log_2(1 + \mathrm{SNR})
    \label{eq:shannon}
\end{equation}
```

Tham chiếu:

```latex
Phương trình~\ref{eq:shannon}
```

---

## Tài liệu tham khảo

Tài liệu tham khảo được quản lý trong:

```text
references.bib
```

Ví dụ:

```bibtex
@book{tanenbaum2021,
  title     = {Computer Networks},
  author    = {Tanenbaum, Andrew S. and Feamster, Nick and Wetherall, David},
  year      = {2021},
  publisher = {Pearson}
}
```

Trích dẫn trong tài liệu:

```latex
\cite{tanenbaum2021}
```

Template hiện sử dụng bibliography style:

```latex
\bibliographystyle{ieeetr}
\bibliography{references}
```

phù hợp với kiểu đánh số tài liệu tham khảo thường gặp trong các báo cáo kỹ thuật.

---

## Phụ lục

Các phụ lục được đặt trong:

```text
appendix/
```

Ví dụ:

```text
appendix_a_vi_du.tex
appendix_b_source_code.tex
appendix_c_cau_hinh.tex
```

Trong `main.tex`:

```latex
\appendix

\input{appendix/appendix_a_vi_du}
\input{appendix/appendix_b_source_code}
```

---

## Yêu cầu

Để build project, cần một LaTeX distribution như:

* TeX Live
* MiKTeX
* MacTeX

Khuyến nghị sử dụng **TeX Live** nếu làm việc trên Linux.

Ngoài ra project sử dụng:

```text
latexmk
```

để tự động xử lý chu trình compile.

---

## Cài đặt

### Linux

Ví dụ với TeX Live:

```bash
sudo dnf install texlive-scheme-full
```

hoặc sử dụng TeX Live cài trực tiếp từ upstream.

Kiểm tra:

```bash
pdflatex --version
latexmk --version
```

---

### Windows

Có thể sử dụng:

* TeX Live
* MiKTeX

Sau khi cài đặt, kiểm tra:

```powershell
pdflatex --version
latexmk --version
```

---

### macOS

Có thể cài MacTeX:

```bash
brew install --cask mactex
```

---

## Build tài liệu

### Sử dụng `latexmk`

Compile project:

```bash
latexmk -pdf main.tex
```

`latexmk` sẽ tự động chạy các bước cần thiết như:

```text
pdflatex
bibtex
pdflatex
pdflatex
```

khi cần.

---

### Theo dõi thay đổi

Có thể sử dụng:

```bash
latexmk -pdf -pvc main.tex
```

`latexmk` sẽ theo dõi các file và tự động compile lại khi nội dung thay đổi.

---

### Windows

Project cung cấp:

```text
build.ps1
```

Có thể chạy:

```powershell
./build.ps1
```

---

## `latexmkrc`

Project có file:

```text
latexmkrc
```

để cấu hình quá trình build với `latexmk`.

Nhờ đó có thể thống nhất:

* thư mục output;
* engine biên dịch;
* file trung gian;
* quy trình build.

---

## Quick Start

### 1. Clone repository

```bash
git clone https://github.com/viet15t12/latex-report-template.git
cd latex-report-template
```

### 2. Điền thông tin báo cáo

Chỉnh:

```text
config/info.tex
```

### 3. Điều chỉnh định dạng nếu cần

Chỉnh:

```text
config/settings.tex
```

### 4. Viết nội dung

Thêm hoặc chỉnh các file:

```text
chapters/
```

### 5. Thêm tài liệu tham khảo

Chỉnh:

```text
references.bib
```

### 6. Compile

```bash
latexmk -pdf main.tex
```

Hoặc compile tự động khi chỉnh sửa:

```bash
latexmk -pdf -pvc main.tex
```

---

## Quy ước tổ chức

Khuyến nghị đặt tên chương theo dạng:

```text
01_loi_mo_dau.tex
02_co_so_ly_thuyet.tex
03_thiet_ke_he_thong.tex
04_trien_khai.tex
05_ket_qua.tex
06_ket_luan.tex
```

Cách tổ chức này giúp:

* dễ xác định thứ tự chương;
* dễ quản lý project lớn;
* giảm kích thước `main.tex`;
* hạn chế conflict khi làm việc nhóm;
* dễ tái sử dụng từng phần của báo cáo.

---

## Mục tiêu của template

Template ưu tiên:

* cấu trúc rõ ràng;
* dễ bảo trì;
* dễ mở rộng;
* tách nội dung khỏi cấu hình;
* quản lý chương theo module;
* quản lý tài liệu tham khảo bằng BibTeX;
* hỗ trợ hình, bảng, công thức và source code;
* phù hợp với tài liệu kỹ thuật và học thuật;
* không cố định số lượng chương.

Cấu trúc này đặc biệt phù hợp với các báo cáo dài, nơi việc đặt toàn bộ nội dung trong một file `.tex` duy nhất sẽ khó quản lý.

---

## Công nghệ

* LaTeX
* TeX Live / MiKTeX / MacTeX
* latexmk
* BibTeX
* IEEE bibliography style

---

## License

Template được xây dựng cho mục đích học tập và viết báo cáo học thuật.

Bạn có thể fork repository và điều chỉnh template theo yêu cầu của trường, khoa, môn học hoặc đề tài của mình.
