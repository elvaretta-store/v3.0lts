REPO="https://raw.githubusercontent.com/wongedann/kuwibebas/main/"
wget -q -O /etc/systemd/system/limitvmess.service "${REPO}wongedann/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${REPO}wongedann/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${REPO}wongedann/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "${REPO}wongedann/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${REPO}wongedann/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${REPO}wongedann/vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${REPO}wongedann/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "${REPO}wongedann/shadowsocks" >/dev/null 2>&1
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks
