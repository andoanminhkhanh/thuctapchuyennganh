﻿namespace ThucTapChuyenNganh.Forms
{
    partial class Bangchamcong
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.mskGiovao = new System.Windows.Forms.MaskedTextBox();
            this.mskNgayLam = new System.Windows.Forms.MaskedTextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.dgridcChamCong = new System.Windows.Forms.DataGridView();
            this.btnVao = new System.Windows.Forms.Button();
            this.btnRa = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnDong = new System.Windows.Forms.Button();
            this.mskGiora = new System.Windows.Forms.MaskedTextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.btnBoqua = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgridcChamCong)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label1.Location = new System.Drawing.Point(286, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(193, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "CHẤM CÔNG";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label2.Location = new System.Drawing.Point(24, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(113, 19);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã nhân viên:";
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(155, 54);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.Size = new System.Drawing.Size(198, 22);
            this.txtMaNV.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label4.Location = new System.Drawing.Point(163, 98);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(73, 19);
            this.label4.TabIndex = 5;
            this.label4.Text = "Giờ vào:";
            // 
            // mskGiovao
            // 
            this.mskGiovao.Location = new System.Drawing.Point(251, 94);
            this.mskGiovao.Mask = "00:00";
            this.mskGiovao.Name = "mskGiovao";
            this.mskGiovao.Size = new System.Drawing.Size(108, 22);
            this.mskGiovao.TabIndex = 6;
            this.mskGiovao.ValidatingType = typeof(System.DateTime);
            // 
            // mskNgayLam
            // 
            this.mskNgayLam.Location = new System.Drawing.Point(524, 56);
            this.mskNgayLam.Mask = "00/00/0000";
            this.mskNgayLam.Name = "mskNgayLam";
            this.mskNgayLam.Size = new System.Drawing.Size(235, 22);
            this.mskNgayLam.TabIndex = 8;
            this.mskNgayLam.ValidatingType = typeof(System.DateTime);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label5.Location = new System.Drawing.Point(393, 57);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(84, 19);
            this.label5.TabIndex = 7;
            this.label5.Text = "Ngày làm:";
            // 
            // dgridcChamCong
            // 
            this.dgridcChamCong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgridcChamCong.Location = new System.Drawing.Point(28, 252);
            this.dgridcChamCong.Name = "dgridcChamCong";
            this.dgridcChamCong.RowHeadersWidth = 51;
            this.dgridcChamCong.RowTemplate.Height = 24;
            this.dgridcChamCong.Size = new System.Drawing.Size(731, 175);
            this.dgridcChamCong.TabIndex = 12;
            this.dgridcChamCong.Click += new System.EventHandler(this.dgridcChamCong_Click);
            // 
            // btnVao
            // 
            this.btnVao.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnVao.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnVao.Location = new System.Drawing.Point(183, 142);
            this.btnVao.Name = "btnVao";
            this.btnVao.Size = new System.Drawing.Size(121, 61);
            this.btnVao.TabIndex = 13;
            this.btnVao.Text = "Chấm công vào";
            this.btnVao.UseVisualStyleBackColor = true;
            this.btnVao.Click += new System.EventHandler(this.btnVao_Click);
            // 
            // btnRa
            // 
            this.btnRa.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRa.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnRa.Location = new System.Drawing.Point(474, 142);
            this.btnRa.Name = "btnRa";
            this.btnRa.Size = new System.Drawing.Size(112, 61);
            this.btnRa.TabIndex = 14;
            this.btnRa.Text = "Chấm công ra";
            this.btnRa.UseVisualStyleBackColor = true;
            this.btnRa.Click += new System.EventHandler(this.btnRa_Click);
            // 
            // btnSua
            // 
            this.btnSua.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSua.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnSua.Location = new System.Drawing.Point(106, 449);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(83, 47);
            this.btnSua.TabIndex = 15;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoa.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnXoa.Location = new System.Drawing.Point(271, 449);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(83, 47);
            this.btnXoa.TabIndex = 16;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnDong
            // 
            this.btnDong.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDong.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnDong.Location = new System.Drawing.Point(604, 449);
            this.btnDong.Name = "btnDong";
            this.btnDong.Size = new System.Drawing.Size(83, 47);
            this.btnDong.TabIndex = 18;
            this.btnDong.Text = "Đóng";
            this.btnDong.UseVisualStyleBackColor = true;
            // 
            // mskGiora
            // 
            this.mskGiora.Location = new System.Drawing.Point(483, 95);
            this.mskGiora.Mask = "00:00";
            this.mskGiora.Name = "mskGiora";
            this.mskGiora.Size = new System.Drawing.Size(111, 22);
            this.mskGiora.TabIndex = 20;
            this.mskGiora.ValidatingType = typeof(System.DateTime);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label8.Location = new System.Drawing.Point(395, 99);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(64, 19);
            this.label8.TabIndex = 19;
            this.label8.Text = "Giờ ra:";
            // 
            // btnBoqua
            // 
            this.btnBoqua.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBoqua.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.btnBoqua.Location = new System.Drawing.Point(438, 449);
            this.btnBoqua.Name = "btnBoqua";
            this.btnBoqua.Size = new System.Drawing.Size(83, 47);
            this.btnBoqua.TabIndex = 21;
            this.btnBoqua.Text = "Bỏ qua";
            this.btnBoqua.UseVisualStyleBackColor = true;
            this.btnBoqua.Click += new System.EventHandler(this.btnBoqua_Click);
            // 
            // Bangchamcong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 515);
            this.Controls.Add(this.btnBoqua);
            this.Controls.Add(this.mskGiora);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.btnDong);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.btnRa);
            this.Controls.Add(this.btnVao);
            this.Controls.Add(this.dgridcChamCong);
            this.Controls.Add(this.mskNgayLam);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.mskGiovao);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtMaNV);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Bangchamcong";
            this.Text = "Bảng chấm công";
            this.Load += new System.EventHandler(this.Bangchamcong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgridcChamCong)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtMaNV;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MaskedTextBox mskGiovao;
        private System.Windows.Forms.MaskedTextBox mskNgayLam;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridView dgridcChamCong;
        private System.Windows.Forms.Button btnVao;
        private System.Windows.Forms.Button btnRa;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnDong;
        private System.Windows.Forms.MaskedTextBox mskGiora;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnBoqua;
    }
}