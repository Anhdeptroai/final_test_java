/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package GUI;

/**
 *
 * @author Admn
 */
public class QuanLySach extends javax.swing.JPanel {

    /**
     * Creates new form QuanLySach
     */
    public QuanLySach() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        txtTimKiemSach = new javax.swing.JTextField();
        btnThemSach = new javax.swing.JButton();
        btnSuaSach = new javax.swing.JButton();
        btnXoaSach = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTableSach = new javax.swing.JTable();

        setBackground(new java.awt.Color(255, 255, 204));
        setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Quản Lý Sách", javax.swing.border.TitledBorder.CENTER, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Segoe UI", 1, 18))); // NOI18N
        setMinimumSize(new java.awt.Dimension(100, 100));

        txtTimKiemSach.setBackground(new java.awt.Color(204, 255, 204));
        txtTimKiemSach.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        txtTimKiemSach.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Tìm kiếm", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Segoe UI", 1, 14))); // NOI18N
        txtTimKiemSach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTimKiemSachActionPerformed(evt);
            }
        });

        btnThemSach.setBackground(new java.awt.Color(204, 204, 255));
        btnThemSach.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnThemSach.setForeground(new java.awt.Color(102, 102, 102));
        btnThemSach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/them.png"))); // NOI18N
        btnThemSach.setText("Thêm");
        btnThemSach.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemSachActionPerformed(evt);
            }
        });

        btnSuaSach.setBackground(new java.awt.Color(204, 204, 255));
        btnSuaSach.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnSuaSach.setForeground(new java.awt.Color(102, 102, 102));
        btnSuaSach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/sua.png"))); // NOI18N
        btnSuaSach.setText("Sửa");

        btnXoaSach.setBackground(new java.awt.Color(204, 204, 255));
        btnXoaSach.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        btnXoaSach.setForeground(new java.awt.Color(102, 102, 102));
        btnXoaSach.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/xoa.png"))); // NOI18N
        btnXoaSach.setText("Xóa");

        jTableSach.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null, null}
            },
            new String [] {
                "Mã sách", "Tên sách", "Thể loại", "Tác giả", "Nhà xuất bản", "Năm xuất bản", "Giá", "Số lượng"
            }
        ));
        jTableSach.setPreferredSize(new java.awt.Dimension(525, 80));
        jScrollPane2.setViewportView(jTableSach);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(txtTimKiemSach, javax.swing.GroupLayout.DEFAULT_SIZE, 715, Short.MAX_VALUE)
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(56, 56, 56)
                .addComponent(btnThemSach, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnSuaSach, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(121, 121, 121)
                .addComponent(btnXoaSach, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(63, 63, 63))
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jScrollPane2)
                    .addContainerGap()))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnThemSach, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnSuaSach, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnXoaSach, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addComponent(txtTimKiemSach, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(837, Short.MAX_VALUE))
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(179, 179, 179)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void txtTimKiemSachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTimKiemSachActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTimKiemSachActionPerformed

    private void btnThemSachActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemSachActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnThemSachActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnSuaSach;
    private javax.swing.JButton btnThemSach;
    private javax.swing.JButton btnXoaSach;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTableSach;
    private javax.swing.JTextField txtTimKiemSach;
    // End of variables declaration//GEN-END:variables
}
