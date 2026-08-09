# LaTeX Report Template — Đồ án / Tiểu luận / NCKH

Template LaTeX dùng chung cho 3 loại báo cáo: **đồ án tốt nghiệp**, **tiểu luận**, **báo cáo nghiên cứu khoa học (NCKH)**.

## Cấu trúc

```
.
├── main.tex              # File gốc, gom toàn bộ báo cáo
├── build.ps1             # Script build nhanh (Windows)
├── latexmkrc             # Cấu hình latexmk
├── references.bib        # Tài liệu tham khảo
├── config/
│   ├── packages.tex      # \usepackage(...)
│   ├── settings.tex      # khổ giấy, lề, giãn dòng, header/footer
│   ├── commands.tex      # macro dùng chung (\todo, \code, ...)
│   ├── listings.tex      # style hiển thị code
│   ├── images.tex        # đường dẫn ảnh mặc định
│   └── info.tex          # loại báo cáo, tên đề tài, tác giả, GVHD...
├── chapters/
│   ├── 00_bia.tex
│   ├── 00_loi_cam_doan.tex
│   ├── 00_loi_cam_on.tex
│   ├── 00_tom_tat.tex
│   ├── 00_danh_muc_tu_viet_tat.tex
│   ├── 01_mo_dau.tex        # Chương mẫu: Mở đầu
│   └── 03_noi_dung_mau.tex  # Chương mẫu: minh hoạ hình/bảng/code/công thức/trích dẫn
└── appendix/
    └── appendix_a_vi_du.tex
```

## Vì sao chỉ có chương 1 và chương 3 mẫu?

Đồ án tốt nghiệp, tiểu luận và NCKH có **số chương khác nhau** (đồ án thường 4-5 chương,
tiểu luận có thể chỉ 2-3 chương, NCKH thường 5-6 chương). Vì vậy template không cứng số
chương, mà chỉ cung cấp 2 chương mẫu để bạn copy làm khuôn:

- `01_mo_dau.tex` — mẫu chương mở đầu (lý do chọn đề tài, mục tiêu, phạm vi...)
- `03_noi_dung_mau.tex` — mẫu minh hoạ cách trình bày nội dung: chèn hình, bảng,
  đoạn code, công thức toán, trích dẫn tài liệu tham khảo

**Cách thêm chương thật:** copy 1 trong 2 file trên, đổi tên theo quy ước
`0N_ten_chuong.tex`, sửa nội dung, rồi thêm dòng `\input{chapters/0N_ten_chuong}`
vào đúng vị trí trong `main.tex`.

## Cách dùng

1. Cài TeX Live hoặc MiKTeX (kèm `latexmk`).
2. Sửa `config/info.tex`: chọn `\reporttype` (đồ án / tiểu luận / NCKH), điền tên đề tài, tác giả, GVHD, MSSV.
3. Viết nội dung thật vào `chapters/`, thêm/xoá chương tuỳ đề tài (xem mục trên).
4. Build:
   - Windows: `./build.ps1`
   - Hoặc: `latexmk -pdf main.tex`
5. PDF xuất ra trong thư mục `build/`.
