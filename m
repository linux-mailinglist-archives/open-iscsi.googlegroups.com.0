Return-Path: <open-iscsi+bncBCYMVIPVXQMBB6WF3ORAMGQEHELOQBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 201266F94FC
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:05 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 38308e7fff4ca-2ac76a31d08sf15309561fa.0
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415804; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSiEjrixbKzfhtH2m8FBKydkMpzZCjIKfy75rPJqFS0kKGRy8Lm+e5ZSO9Je90/03m
         jde7zu0xzpyvOCS6Rb2HdqxaXRWlZcxd3RJ/JN7pOeZRqE/yY/Yh5+eS7UHSHqJpnXsH
         B7D80CnoYTl/xpxweTp1glkfWqNXAxaZ0Wgmt2XwLcAZkDXdBbd4pMSKVkxHMw1YdwVO
         +QgHQcsOGBlFRt9xceldrfdE9P5F+7CsmRCSoGhRm9KNhpuZdqh8Aga3gFCh+1fi0p5i
         KCJnaMPbatdv2HJgdB0bhZ390IPSJdIsDtrDhdIw0tDF8LKmlgk6mLL6fcFJ3AlcGsoq
         pJwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=kvso/F0FPLsC9eoFJtiyuMDbCS8zOy8/rgyoEh0lejs=;
        b=RXh+95T0JyqgRlneXNIJo873lbZr995HMLPeR323fzLwFIa9BViUC2nk3H2zglpAxH
         IgfvaA1Cn/z0kjkzYOfvvK5RC6AsrSZPETzVhTm+4QHrVI06dl0n9etbGB9r/TSQiBKD
         +Ttx9W8F+5/j7OA3TmQDqvbxjLZyCvKrlciiWevlOyYF9dgyHDMtW0Ixb2Bqc6FPmh5+
         blVLYOAVUKkWPerppHzskX5koaS+InDAVRg/IkOUN+xyV1V9WxZWjZLFisji9QoJGEUG
         MrptJcQKJ/SpENNxCO3DZO3mdMIrWtn+haNk8axBIbo0jlwAOSP1Eq2TZpd/Oe0vp6Ax
         3jJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RXl30NJ1;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415804; x=1686007804;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kvso/F0FPLsC9eoFJtiyuMDbCS8zOy8/rgyoEh0lejs=;
        b=fkBNNAPqzkfHc3U5sFybvEoryqnxCeSBl6a1VJ4KU5aszF/PriGXI676iRfTMbwZVk
         KvSzXKlHU/22aqVzf3u1Dqrwn7XhnKgMyIhiojFAqu0cuQjnez6G8ZesZU3TBHAplSo0
         bgDr5Mq4nPpVsXnguuEkxwq3XCJStmALc0B8/n5QZiXHHS9hbOfc7TgsuMJOmz1IMiCA
         +kJttp9qfh5SQYcNOKIyaiVenrrpaWRrQvvD3ucpDlPHJz0IKbGYZsMXaoBKY3yA1C1q
         mmBwcytS/0HHuanx8ZVqhq+EIMLqdl4z6eknaGVjLIjJI4ZHx943Sxb27tGDkgbe8OI7
         RqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415804; x=1686007804;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvso/F0FPLsC9eoFJtiyuMDbCS8zOy8/rgyoEh0lejs=;
        b=Uvjqgbm43YlMDo2BxbJWwZBnvJQVqYf4QUBBtY8Gb1HUHBDJh5xpj3lFokpahW7aRP
         xSaV1OwgFCW036+Pqk9D+wHfo0SEsQQBZpnr9AwGapdfb5s8JXx3WIYOdT0BKm+QvsH/
         25LoUdLG6umt0FRchBWD7JAZ7p+cs4RY07VUbSD1k4L/JoOofdUL80xTc5ek8bx4jkF1
         FjGoIyLLIV/atpE9c2M9PcQ3hFO7yVXosJrbjzwGsFfbN312cmqyQaBjy4d+xWkOeoeo
         M+1/fnaQwtyAPd2AOLLnQ+/q55wXfDFcZ7dyuhLssSPVLlGdKyW3MkNVlb4AttCyVaHG
         PlaA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDyv95ufGFdbFabuJdYvg2Oehs4eo04gsSTk6DvzrWMFB0wgPwm7
	fWTxiotpiq3XsIfYuH46k9g=
X-Google-Smtp-Source: ACHHUZ4zptOa+L3faVVcAxcFM/WdQALSK+wfwfHFZJkL9a/LBAO/hRW00ic9q4QVm+kibsm72kiJ9w==
X-Received: by 2002:a05:651c:93:b0:2a6:16b5:2fba with SMTP id 19-20020a05651c009300b002a616b52fbamr1403187ljq.1.1683415804466;
        Sat, 06 May 2023 16:30:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:4017:b0:4ed:bafc:b947 with SMTP id
 br23-20020a056512401700b004edbafcb947ls2928504lfb.2.-pod-prod-gmail; Sat, 06
 May 2023 16:30:01 -0700 (PDT)
X-Received: by 2002:a05:6512:948:b0:4f1:3eea:eafe with SMTP id u8-20020a056512094800b004f13eeaeafemr1379259lft.45.1683415801421;
        Sat, 06 May 2023 16:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415801; cv=none;
        d=google.com; s=arc-20160816;
        b=uKlTleVGPTTcdAYKRlEFlK1ROtJ7bYPvQokXpbEpYhAMFbq3E4bylhIZkRaqO2e+Ks
         2kDs/cPUGXTzpx1kdJcFr7WZC8VVBPPQxJUPi6oFoFG8K9bgr8disIcLLl84uJPf7z3T
         KtSKL2f6QaAZ86vTANTMhm8sc9YVBtk5Ma5LbubTYLBMBKTYW/nbc59p4iePPPUWJjEN
         awhBSCcSW3CQ/q6UxCGpMPfelfsrz4FuzyySjy9m5DDgdRXW9pb4W3EvZIu5Z9dDTvJP
         7rvYdDM8xB6pvq79LcvmEHKy2OL8dzt5GRHnblRLAnqmmA2LYqBJ39r0Giads08gN3la
         L8cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HTNOXZ9d3dhcO4s9WBiEF9HWEodG/IEQpgnehQ6yqCY=;
        b=jvoVROEopCtlwxmFX22LkCZvURHHco6Q4eCrmDD2t4aKZPczoIQvPTg+cUc+okqSrD
         aXr5Q6rwOcPyuyxyrWlYkCdOxRR7KnEXDi6TLf9ZdfrCQaTWXPGK1bpdn8sIMa/6zdxO
         ch/rfX8uGw9Hiyo174RM0GD99gaGl0wOxOayJrqkCw/bpUjoBQ4D4tt18UFXmJCwSVv/
         YYtF08sDnbWj0ETVTV4/RE4jNqCaQw1VDZzg423VqN1JRJHRWNZqTBC2XWdautfMTD18
         y9IyuL6oPPIZP4qRxcyopJ4MOBA9MOoMxurNd7GvxY+tgiH7Nm+Oem0om6E49zaOtsDG
         N9Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RXl30NJ1;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id i22-20020a0565123e1600b004f145ea0d5csi373619lfv.11.2023.05.06.16.30.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-250-THfngOn5Ola1sr8UyS1tjA-1; Sat, 06 May 2023 19:29:56 -0400
X-MC-Unique: THfngOn5Ola1sr8UyS1tjA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E555884626;
	Sat,  6 May 2023 23:29:56 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 882FA35443;
	Sat,  6 May 2023 23:29:55 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 04/11] iscsi: make all iSCSI netlink multicast namespace aware
Date: Sat,  6 May 2023 16:29:23 -0700
Message-Id: <20230506232930.195451-5-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RXl30NJ1;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Signed-off-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 92 +++++++++++++++++++----------
 1 file changed, 60 insertions(+), 32 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 814aef6da4a3..0249c6d889c4 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2657,8 +2657,8 @@ iscsi_if_transport_lookup(struct iscsi_transport *tt)
 }
 
 static int
-iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
-		      uint32_t group, gfp_t gfp)
+iscsi_multicast_skb(struct net *net, struct sk_buff *skb,
+		    uint32_t group, gfp_t gfp)
 {
 	struct sock *nls;
 	struct iscsi_net *isn;
@@ -2669,17 +2669,10 @@ iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
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
@@ -2694,6 +2687,7 @@ int iscsi_recv_pdu(struct iscsi_cls_conn *conn, struct iscsi_hdr *hdr,
 	struct iscsi_uevent *ev;
 	char *pdu;
 	struct iscsi_internal *priv;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev) + sizeof(struct iscsi_hdr) +
 				   data_size);
 
@@ -2720,7 +2714,8 @@ int iscsi_recv_pdu(struct iscsi_cls_conn *conn, struct iscsi_hdr *hdr,
 	memcpy(pdu, hdr, sizeof(struct iscsi_hdr));
 	memcpy(pdu + sizeof(struct iscsi_hdr), data, data_size);
 
-	return iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
+	net = iscsi_conn_net(conn);
+	return iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
 }
 EXPORT_SYMBOL_GPL(iscsi_recv_pdu);
 
@@ -2731,6 +2726,7 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 	struct nlmsghdr	*nlh;
 	struct sk_buff *skb;
 	struct iscsi_uevent *ev;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev) + data_size);
 
 	skb = alloc_skb(len, GFP_ATOMIC);
@@ -2755,7 +2751,8 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 
 	memcpy((char *)ev + sizeof(*ev), data, data_size);
 
-	return iscsi_multicast_skb(skb, ISCSI_NL_GRP_UIP, GFP_ATOMIC);
+	net = iscsi_host_net(shost->shost_data);
+	return iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_UIP, GFP_ATOMIC);
 }
 EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
 
@@ -2765,6 +2762,7 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 	struct sk_buff	*skb;
 	struct iscsi_uevent *ev;
 	struct iscsi_internal *priv;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev));
 	unsigned long flags;
 	int state;
@@ -2812,7 +2810,8 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
 	ev->r.connerror.cid = conn->cid;
 	ev->r.connerror.sid = iscsi_conn_get_sid(conn);
 
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
+	net = iscsi_conn_net(conn);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
 
 	iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn error (%d)\n",
 			      error);
@@ -2826,6 +2825,7 @@ void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
 	struct sk_buff  *skb;
 	struct iscsi_uevent *ev;
 	struct iscsi_internal *priv;
+	struct net *net;
 	int len = nlmsg_total_size(sizeof(*ev));
 
 	priv = iscsi_if_transport_lookup(conn->transport);
@@ -2846,7 +2846,9 @@ void iscsi_conn_login_event(struct iscsi_cls_conn *conn,
 	ev->r.conn_login.state = state;
 	ev->r.conn_login.cid = conn->cid;
 	ev->r.conn_login.sid = iscsi_conn_get_sid(conn);
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
+
+	net = iscsi_conn_net(conn);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);
 
 	iscsi_cls_conn_printk(KERN_INFO, conn, "detected conn login (%d)\n",
 			      state);
@@ -2857,11 +2859,17 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
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
@@ -2880,7 +2888,9 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
 	if (data_size)
 		memcpy((char *)ev + sizeof(*ev), data, data_size);
 
-	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
+	net = iscsi_host_net(shost->shost_data);
+	scsi_host_put(shost);
+	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
 }
 EXPORT_SYMBOL_GPL(iscsi_post_host_event);
 
@@ -2888,11 +2898,17 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
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
@@ -2909,12 +2925,15 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
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
@@ -2928,11 +2947,11 @@ iscsi_if_send_reply(u32 portid, int type, void *payload, int size)
 
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
@@ -2989,7 +3008,7 @@ iscsi_if_get_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 		skb_trim(skbstat, NLMSG_ALIGN(actual_size));
 		nlhstat->nlmsg_len = actual_size;
 
-		err = iscsi_multicast_skb(skbstat, ISCSI_NL_GRP_ISCSID,
+		err = iscsi_multicast_skb(net, skbstat, ISCSI_NL_GRP_ISCSID,
 					  GFP_ATOMIC);
 	} while (err < 0 && err != -ECONNREFUSED);
 
@@ -3009,6 +3028,7 @@ int iscsi_session_event(struct iscsi_cls_session *session,
 	struct iscsi_uevent *ev;
 	struct sk_buff  *skb;
 	struct nlmsghdr *nlh;
+	struct net *net;
 	int rc, len = nlmsg_total_size(sizeof(*ev));
 
 	priv = iscsi_if_transport_lookup(session->transport);
@@ -3053,7 +3073,8 @@ int iscsi_session_event(struct iscsi_cls_session *session,
 	 * this will occur if the daemon is not up, so we just warn
 	 * the user and when the daemon is restarted it will handle it
 	 */
-	rc = iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
+	net = iscsi_sess_net(session);
+	rc = iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
 	if (rc == -ESRCH)
 		iscsi_cls_session_printk(KERN_ERR, session,
 					 "Cannot notify userspace of session "
@@ -3416,7 +3437,8 @@ iscsi_send_ping(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 }
 
 static int
-iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
+iscsi_get_chap(struct net *net, struct iscsi_transport *transport,
+	       struct nlmsghdr *nlh)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct Scsi_Host *shost = NULL;
@@ -3475,7 +3497,7 @@ iscsi_get_chap(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 		skb_trim(skbchap, NLMSG_ALIGN(actual_size));
 		nlhchap->nlmsg_len = actual_size;
 
-		err = iscsi_multicast_skb(skbchap, ISCSI_NL_GRP_ISCSID,
+		err = iscsi_multicast_skb(net, skbchap, ISCSI_NL_GRP_ISCSID,
 					  GFP_KERNEL);
 	} while (err < 0 && err != -ECONNREFUSED);
 
@@ -3822,7 +3844,8 @@ static int iscsi_logout_flashnode_sid(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
+iscsi_get_host_stats(struct net *net, struct iscsi_transport *transport,
+		     struct nlmsghdr *nlh)
 {
 	struct iscsi_uevent *ev = nlmsg_data(nlh);
 	struct Scsi_Host *shost = NULL;
@@ -3882,8 +3905,8 @@ iscsi_get_host_stats(struct iscsi_transport *transport, struct nlmsghdr *nlh)
 		skb_trim(skbhost_stats, NLMSG_ALIGN(actual_size));
 		nlhhost_stats->nlmsg_len = actual_size;
 
-		err = iscsi_multicast_skb(skbhost_stats, ISCSI_NL_GRP_ISCSID,
-					  GFP_KERNEL);
+		err = iscsi_multicast_skb(net, skbhost_stats,
+					  ISCSI_NL_GRP_ISCSID, GFP_KERNEL);
 	} while (err < 0 && err != -ECONNREFUSED);
 
 exit_host_stats:
@@ -4005,7 +4028,8 @@ static int iscsi_if_transport_conn(struct iscsi_transport *transport,
 }
 
 static int
-iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
+iscsi_if_recv_msg(struct net *net, struct sk_buff *skb,
+		  struct nlmsghdr *nlh, uint32_t *group)
 {
 	int err = 0;
 	u32 portid;
@@ -4100,7 +4124,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_if_transport_conn(transport, nlh);
 		break;
 	case ISCSI_UEVENT_GET_STATS:
-		err = iscsi_if_get_stats(transport, nlh);
+		err = iscsi_if_get_stats(net, transport, nlh);
 		break;
 	case ISCSI_UEVENT_TRANSPORT_EP_CONNECT:
 	case ISCSI_UEVENT_TRANSPORT_EP_POLL:
@@ -4125,7 +4149,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		err = iscsi_send_ping(transport, ev);
 		break;
 	case ISCSI_UEVENT_GET_CHAP:
-		err = iscsi_get_chap(transport, nlh);
+		err = iscsi_get_chap(net, transport, nlh);
 		break;
 	case ISCSI_UEVENT_DELETE_CHAP:
 		err = iscsi_delete_chap(transport, ev);
@@ -4156,7 +4180,7 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 				     nlmsg_attrlen(nlh, sizeof(*ev)));
 		break;
 	case ISCSI_UEVENT_GET_HOST_STATS:
-		err = iscsi_get_host_stats(transport, nlh);
+		err = iscsi_get_host_stats(net, transport, nlh);
 		break;
 	default:
 		err = -ENOSYS;
@@ -4174,6 +4198,8 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 static void
 iscsi_if_rx(struct sk_buff *skb)
 {
+	struct sock *sk = skb->sk;
+	struct net *net = sock_net(sk);
 	u32 portid = NETLINK_CB(skb).portid;
 
 	mutex_lock(&rx_queue_mutex);
@@ -4196,7 +4222,7 @@ iscsi_if_rx(struct sk_buff *skb)
 		if (rlen > skb->len)
 			rlen = skb->len;
 
-		err = iscsi_if_recv_msg(skb, nlh, &group);
+		err = iscsi_if_recv_msg(net, skb, nlh, &group);
 		if (err) {
 			ev->type = ISCSI_KEVENT_IF_ERROR;
 			ev->iferror = err;
@@ -4212,7 +4238,9 @@ iscsi_if_rx(struct sk_buff *skb)
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
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-5-cleech%40redhat.com.
