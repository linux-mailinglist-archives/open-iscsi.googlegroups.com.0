Return-Path: <open-iscsi+bncBC755V5RXMKBBLF5R6PQMGQEWMU4HJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D60B68F5CA
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id g15-20020adfd1ef000000b002c3daec14f3sf2490386wrd.3
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878064; cv=pass;
        d=google.com; s=arc-20160816;
        b=y4eXLtZP3G+eFez6w6RSlC02iZbg+b6MP+D84zQh0+tAKVJC2bFz8ovXqfPqLW6AaJ
         8cAZLALu8QXuxoV961QOgXGAZYMh2Lh+eUfKnv1VdKaUVVUlHrQPpOWAEHqdKhIrFz+m
         yUnRNahfQc2g6g8ug5iMNViLDygYkYYqJpkNccM78yPH+ySDXSPFLl2VCYlqFP9SYi6o
         KFxd2UHcJiIXIxdJvjzcrwEbHtqvnqEumjplJddnzJHxGN4lvYZLnNQqgLQOSOXU6mt2
         SldFj+a00YWixJMxPrxF1r08S5QlSf+TWM0LuJSr55jcJ+V6Bh1HyeOPGVxKy9aQE2py
         RLXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MVMS0IzLG8+CmBYUtDdTjVOl+G5zGnB9Rxq+RW2MzjE=;
        b=HB7hSPnpjv2AWDRhEopecxjQQKlGS4ZJpCW5frCiZ+OJtJ+PXFeUki8a9NVpWt6+71
         FrDRkNkJyk1kTD+q1L6Reacg3ogg/sBN4FnsVpD1oW1ngTyzZ6kEtEFsH6dqB1ZTsokL
         qDvQO//Afw+4q/1+uUNVCwRO7PeztxTblze1VatxbEZyeOGy3KAlo0mGy2LegN3+XkJR
         JaTqAKdWnOQTCdLU63xhNw56NgW28Q1Q9c2JIDXfkpuL2tkoBx55dYsPGYTPCaTveSxK
         w8wFRsA0OOWIbNzc4ioVnhwnC8M12vm0JYE4ptEV/LSDE/rbWlpT5E4RgphG0GVYaq25
         kzHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MVMS0IzLG8+CmBYUtDdTjVOl+G5zGnB9Rxq+RW2MzjE=;
        b=HE/7nSy1EDQek4EqgyQJISFlqoOZr3iSGp8KxuOvCFyqx1Z7R7khhb0KZMfnQ8KGRZ
         /q4WJ2jXWUVP+7hwkxNxbqH5WeweCHyMNANEz/OK4LzPzjD7jQXxb3Qkjbz2TWqUnZZD
         qg9MjDlSPGMqtKtsxG+l1LviRNR2kEWQqGscTQRqWaHOcH17kg1KeGkO43UgbJ/nI9T/
         rRiF2GPTooz3YjiLDvxtTqqNGGK0sGXbyQm4otBR7ZOSQf4RP6bqcqVN9LUhsSCuSJq+
         NkCK/lPIb3R9TC1FPiXSXhNNOANOTULm3bpEMwkp+ZEMcQAXKaVTYg5fG64ByZa8XYNn
         NXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MVMS0IzLG8+CmBYUtDdTjVOl+G5zGnB9Rxq+RW2MzjE=;
        b=vnx/14qrDu/VKzIZHCet1m/T0HAiSWK6+ilO4VLryvbT1oQCEQT0zDjSb1PB3C+coS
         oihOFwW5kf+pkmt4YtNF8g3ycn2SVNunMRb38PgZPYAqZPQdsXjPAvgn54ahOUyYPWAJ
         FJ42GRKGCjRUAJy5GIUQrJgHzI+28NIFoJm6WJvOSDkBJy8dOR8ifFa+CSHBhzxJyxvy
         wZS58U8pvnYQNAQVrnVNanbSRYHP6IyHRsKEdCiHOej5kKaH7b6xq8q4o3Y7dgExOYRj
         vYqlugEb64IL2re9NVyiBnF2oKXy1na8lh+JzNR5XVIKX4++/P8hZ4Ph346GJzYful3Z
         qfEw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVtxRquc4MIC0PIw0ByPviexmYcasHxKAtXdMhsHcYKBvurLcCa
	k0qDMaggJRqtKA+Pu4wrAck=
X-Google-Smtp-Source: AK7set8qNl+zzwXZTBpAarlNkYyCwY/QUKwetqxdpJmAvH8brdkmYe9SKrOxu2V7FIyoUt8FfQ/tug==
X-Received: by 2002:a1c:f216:0:b0:3df:e474:2a95 with SMTP id s22-20020a1cf216000000b003dfe4742a95mr319998wmc.117.1675878062113;
        Wed, 08 Feb 2023 09:41:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3ca6:b0:3cd:d7d0:14b6 with SMTP id
 bg38-20020a05600c3ca600b003cdd7d014b6ls1445870wmb.1.-pod-control-gmail; Wed,
 08 Feb 2023 09:40:59 -0800 (PST)
X-Received: by 2002:a05:600c:4d0a:b0:3dc:50c1:5fd4 with SMTP id u10-20020a05600c4d0a00b003dc50c15fd4mr9871946wmp.15.1675878059542;
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878059; cv=none;
        d=google.com; s=arc-20160816;
        b=SYV8E4G/+aKeKKba5nq+xQ5UAnWiZ7mO0iyY358v3BzOOy4FSVYAT0iOazU6NoqWet
         jGynRv7ENHwlW6tHzTkj1SkO2NO7rPhMSZUwX/eKE4bZ/CAZ+gw0ax3mH52oX6YFMpBp
         bgGBOR0WOIkOpxXSB52hrF7iYVsANEzXG3idc6+/YtiQRvqtc54YpIa54FK98aNcoywr
         X4A/udpCXJxxFzucPp+dxMH0S0uG7FSQRl16ZYMY5hecP70dcjtVHxGxpYIUMspvTy96
         D6OFa/+xcY1XMTySbB0c+z1R0PIA9dRFvTsro/tL5HLk/TMyPqQ/EP+ggNv4m/FrLzkF
         77qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hC+fPqrKqP1Dsw6O3hy+9Oh5Iz6cVmD8YstgzNQzlEg=;
        b=biZUtO6XBlEo1PEecTowaen94Zf+ZELBDaTaRtrZFgofrN5qfZHj8ZHviE1zhLdibt
         M/mHzu1aR0sjCBVFvVABJRCBUDdoQGt2vgvcsGEmIiGnfAEwQlzP5VYfDN23bZnwpvu1
         pQhTGGYtXeTL+DB7b+NvoEj16aD1B87xo8safXGpK4ViWXhSL66owQNhHPnegofJtG9K
         3VxvKr5vn2K+xSI3LgF0m5Ot7Kw8tMozCdbGLXeazDYL2fHN3zzMqlYwhKFDMtWYFpDN
         IryyZT2zGiNr1Hx3mJ6X+jPTszNeGCwTtri9/VsP8T5/5yvD0zIc3a7jn4hMBzvqrKv4
         ooeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id bg10-20020a05600c3c8a00b003db0d2c3d6esi149468wmb.0.2023.02.08.09.40.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 5350C1FF38;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 17E782C146;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 31E4ACA18C; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 4/9] iscsi: make all iSCSI netlink multicast namespace aware
Date: Wed,  8 Feb 2023 09:40:52 -0800
Message-Id: <587c492ffafb3090ec9e28b7d247fcc7e2141251.1675876734.git.lduncan@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.29 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE sp=QUARANTINE
 dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Lee Duncan <lduncan@suse.com>

Make use of the per-net netlink sockets. Responses are sent back on the
same socket/namespace the request was received on.  Async events are
reported on the socket/namespace stored in the iscsi_cls_host associated
with the event.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 92 +++++++++++++++++++----------
 1 file changed, 60 insertions(+), 32 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 2e2b291bce41..230b43d34c5f 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2653,8 +2653,8 @@ iscsi_if_transport_lookup(struct iscsi_transport *tt)
 }
 
 static int
-iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
-		      uint32_t group, gfp_t gfp)
+iscsi_multicast_skb(struct net *net, struct sk_buff *skb,
+		    uint32_t group, gfp_t gfp)
 {
 	struct sock *nls;
 	struct iscsi_net *isn;
@@ -2665,17 +2665,10 @@ iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
 }
 
 static int
-iscsi_multicast_skb(struct sk_buff *skb, uint32_t group, gfp_t gfp)
-{
-	return iscsi_multicast_netns(&init_net, skb, group, gfp);
-}
-
-static int
-iscsi_unicast_skb(struct sk_buff *skb, u32 portid)
+iscsi_unicast_skb(struct net *net, struct sk_buff *skb, u32 portid)
 {
 	struct sock *nls;
 	struct iscsi_net *isn;
-	struct net *net = &init_net;
 
 	isn = net_generic(net, iscsi_net_id);
 	nls = isn->nls;
@@ -2690,6 +2683,7 @@ int iscsi_recv_pdu(struct iscsi_cls_conn *conn, struct iscsi_hdr *hdr,
 	struct iscsi_uevent *ev;
 	char *pdu;
 	struct iscsi_internal *priv;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev) + sizeof(struct iscsi_hdr) +
 				   data_size);
 
@@ -2716,7 +2710,8 @@ int iscsi_recv_pdu(struct iscsi_cls_conn *conn, struct iscsi_hdr *hdr,
 	memcpy(pdu, hdr, sizeof(struct iscsi_hdr));
 	memcpy(pdu + sizeof(struct iscsi_hdr), data, data_size);
 
-	return iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
+	net = iscsi_conn_net(conn);
+	return iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
 }
 EXPORT_SYMBOL_GPL(iscsi_recv_pdu);
 
@@ -2727,6 +2722,7 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 	struct nlmsghdr	*nlh;
 	struct sk_buff *skb;
 	struct iscsi_uevent *ev;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev) + data_size);
 
 	skb = alloc_skb(len, GFP_ATOMIC);
@@ -2751,7 +2747,8 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 
 	memcpy((char *)ev + sizeof(*ev), data, data_size);
 
-	return iscsi_multicast_skb(skb, ISCSI_NL_GRP_UIP, GFP_ATOMIC);
+	net = iscsi_host_net(shost->shost_data);
+	return iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_UIP, GFP_ATOMIC);
 }
 EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
 
@@ -2761,6 +2758,7 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 	struct sk_buff	*skb;
 	struct iscsi_uevent *ev;
 	struct iscsi_internal *priv;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev));
 	unsigned long flags;
 	int state;
@@ -2808,7 +2806,8 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 	ev->r.connerror.cid = conn->cid;
 	ev->r.connerror.sid = iscsi_conn_get_sid(conn);
 
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
+	net = iscsi_conn_net(conn);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
 
 	iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn error (%d)\n",
 			      error);
@@ -2822,6 +2821,7 @@ void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
 	struct sk_buff  *skb;
 	struct iscsi_uevent *ev;
 	struct iscsi_internal *priv;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev));
 
 	priv = iscsi_if_transport_lookup(conn->transport);
@@ -2842,7 +2842,9 @@ void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
 	ev->r.conn_login.state = state;
 	ev->r.conn_login.cid = conn->cid;
 	ev->r.conn_login.sid = iscsi_conn_get_sid(conn);
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
+
+	net = iscsi_conn_net(conn);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
 
 	iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn login (%d)\n",
 			      state);
@@ -2853,11 +2855,17 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
 			   enum iscsi_host_event_code code, uint32_t data_size,
 			   uint8_t *data)
 {
+	struct Scsi_Host *shost;
+	struct net *net;
 	struct nlmsghdr *nlh;
 	struct sk_buff *skb;
 	struct iscsi_uevent *ev;
 	int len = nlmsg_total_size(sizeof(*ev) + data_size);
 
+	shost = scsi_host_lookup(host_no);
+	if (!shost)
+		return;
+
 	skb = alloc_skb(len, GFP_NOIO);
 	if (!skb) {
 		printk(KERN_ERR "gracefully ignored host event (%d):%d OOM\n",
@@ -2876,7 +2884,9 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
 	if (data_size)
 		memcpy((char *)ev + sizeof(*ev), data, data_size);
 
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
+	net = iscsi_host_net(shost->shost_data);
+	scsi_host_put(shost);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
 }
 EXPORT_SYMBOL_GPL(iscsi_post_host_event);
 
@@ -2884,11 +2894,17 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
 			   uint32_t status, uint32_t pid, uint32_t data_size,
 			   uint8_t *data)
 {
+	struct Scsi_Host *shost;
+	struct net *net;
 	struct nlmsghdr *nlh;
 	struct sk_buff *skb;
 	struct iscsi_uevent *ev;
 	int len = nlmsg_total_size(sizeof(*ev) + data_size);
 
+	shost = scsi_host_lookup(host_no);
+	if (!shost)
+		return;
+
 	skb = alloc_skb(len, GFP_NOIO);
 	if (!skb) {
 		printk(KERN_ERR "gracefully ignored ping comp: OOM\n");
@@ -2905,12 +2921,15 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
 	ev->r.ping_comp.data_size = data_size;
 	memcpy((char *)ev + sizeof(*ev), data, data_size);
 
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
+	net = iscsi_host_net(shost->shost_data);
+	scsi_host_put(shost);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
 }
 EXPORT_SYMBOL_GPL(iscsi_ping_comp_event);
 
 static int
-iscsi_if_send_reply(u32 portid, int type, void *payload, int size)
+iscsi_if_send_reply(struct net *net, u32 portid, int type,
+		    void *payload, int size)
 {
 	struct sk_buff	*skb;
 	struct nlmsghdr	*nlh;
@@ -2924,11 +2943,11 @@ iscsi_if_send_reply(u32 portid, int type, void *payload, int size)
 
 	nlh = __nlmsg_put(skb, 0, 0, type, (len - sizeof(*nlh)), 0);
 	memcpy(nlmsg_data(nlh), payload, size);
-	return iscsi_unicast_skb(skb, portid);
+	return iscsi_unicast_skb(net, skb, portid);
 }
 
 static int
-iscsi_if_get_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
+iscsi_if_get_stats(struct net *net, struct iscsi_transport *transport, struct nlmsghdr *nlh)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct iscsi_stats *stats;
@@ -2985,7 +3004,7 @@ iscsi_if_get_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 		skb_trim(skbstat, NLMSG_ALIGN(actual_size));
 		nlhstat->nlmsg_len = actual_size;
 
-		err = iscsi_multicast_skb(skbstat, ISCSI_NL_GRP_ISCSID,
+		err = iscsi_multicast_skb(net, skbstat, ISCSI_NL_GRP_ISCSID,
 					  GFP_ATOMIC);
 	} while (err < 0 && err != -ECONNREFUSED);
 
@@ -3005,6 +3024,7 @@ int iscsi_session_event(struct iscsi_cls_session *session,
 	struct iscsi_uevent *ev;
 	struct sk_buff  *skb;
 	struct nlmsghdr *nlh;
+	struct net *net;
 	int rc, len = nlmsg_total_size(sizeof(*ev));
 
 	priv = iscsi_if_transport_lookup(session->transport);
@@ -3049,7 +3069,8 @@ int iscsi_session_event(struct iscsi_cls_session *session,
 	 * this will occur if the daemon is not up, so we just warn
 	 * the user and when the daemon is restarted it will handle it
 	 */
-	rc = iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
+	net = iscsi_sess_net(session);
+	rc = iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
 	if (rc == -ESRCH)
 		iscsi_cls_session_printk(KERN_ERR, session,
 					 "Cannot notify userspace of session "
@@ -3412,7 +3433,8 @@ iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 }
 
 static int
-iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
+iscsi_get_chap(struct net *net, struct iscsi_transport *transport,
+	       struct nlmsghdr *nlh)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct Scsi_Host *shost = NULL;
@@ -3471,7 +3493,7 @@ iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 		skb_trim(skbchap, NLMSG_ALIGN(actual_size));
 		nlhchap->nlmsg_len = actual_size;
 
-		err = iscsi_multicast_skb(skbchap, ISCSI_NL_GRP_ISCSID,
+		err = iscsi_multicast_skb(net, skbchap, ISCSI_NL_GRP_ISCSID,
 					  GFP_KERNEL);
 	} while (err < 0 && err != -ECONNREFUSED);
 
@@ -3818,7 +3840,8 @@ static int iscsi_logout_flashnode_sid(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
+iscsi_get_host_stats(struct net *net, struct iscsi_transport *transport,
+		     struct nlmsghdr *nlh)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct Scsi_Host *shost = NULL;
@@ -3878,8 +3901,8 @@ iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 		skb_trim(skbhost_stats, NLMSG_ALIGN(actual_size));
 		nlhhost_stats->nlmsg_len = actual_size;
 
-		err = iscsi_multicast_skb(skbhost_stats, ISCSI_NL_GRP_ISCSID,
-					  GFP_KERNEL);
+		err = iscsi_multicast_skb(net, skbhost_stats,
+					  ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
 	} while (err < 0 && err != -ECONNREFUSED);
 
 exit_host_stats:
@@ -4001,7 +4024,8 @@ static int iscsi_if_transport_conn(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
+iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
+		  struct nlmsghdr *nlh, uint32_t *group)
 {
 	int err = 0;
 	u32 portid;
@@ -4096,7 +4120,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_if_transport_conn(transport, nlh);
 		break;
 	case ISCSI_UEVENT_GET_STATS:
-		err = iscsi_if_get_stats(transport, nlh);
+		err = iscsi_if_get_stats(net, transport, nlh);
 		break;
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT:
 	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
@@ -4121,7 +4145,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_send_ping(transport, ev);
 		break;
 	case ISCSI_UEVENT_GET_CHAP:
-		err = iscsi_get_chap(transport, nlh);
+		err = iscsi_get_chap(net, transport, nlh);
 		break;
 	case ISCSI_UEVENT_DELETE_CHAP:
 		err = iscsi_delete_chap(transport, ev);
@@ -4152,7 +4176,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 				     nlmsg_attrlen(nlh, sizeof(*ev)));
 		break;
 	case ISCSI_UEVENT_GET_HOST_STATS:
-		err = iscsi_get_host_stats(transport, nlh);
+		err = iscsi_get_host_stats(net, transport, nlh);
 		break;
 	default:
 		err = -ENOSYS;
@@ -4170,6 +4194,8 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 static void
 iscsi_if_rx(struct sk_buff *skb)
 {
+	struct sock *sk = skb->sk;
+	struct net *net = sock_net(sk);
 	u32 portid = NETLINK_CB(skb).portid;
 
 	mutex_lock(&rx_queue_mutex);
@@ -4192,7 +4218,7 @@ iscsi_if_rx(struct sk_buff *skb)
 		if (rlen > skb->len)
 			rlen = skb->len;
 
-		err = iscsi_if_recv_msg(skb, nlh, &group);
+		err = iscsi_if_recv_msg(net, skb, nlh, &group);
 		if (err) {
 			ev->type = ISCSI_KEVENT_IF_ERROR;
 			ev->iferror = err;
@@ -4208,7 +4234,9 @@ iscsi_if_rx(struct sk_buff *skb)
 				break;
 			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
 				break;
-			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
+			if (ev->type == ISCSI_UEVENT_GET_HOST_STATS && !err)
+				break;
+			err = iscsi_if_send_reply(net, portid, nlh->nlmsg_type,
 						  ev, sizeof(*ev));
 			if (err == -EAGAIN && --retries < 0) {
 				printk(KERN_WARNING "Send reply failed, error %d\n", err);
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/587c492ffafb3090ec9e28b7d247fcc7e2141251.1675876734.git.lduncan%40suse.com.
