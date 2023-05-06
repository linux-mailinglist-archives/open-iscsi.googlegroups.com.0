Return-Path: <open-iscsi+bncBCYMVIPVXQMBB6GF3ORAMGQEFGGLLVQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8449C6F94F7
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:02 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id 71dfb90a1353d-44fd5111065sf746621e0c.2
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415801; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ian40bIG3KMCeD6myFfXbUsRKdZgv8+3LoP8Xt0iGFFWyiRpJFCuf2o6yXbJgBtWpm
         QAb2PZWHIEsbYeGXoLWoN5FiRsrTE4+DdVDIKtTSEuj6t5RnGzV7Sndq5WSeYzEA/wP5
         nyfWw86XNgK4vjX9ZzmLidY/LLGSnDaUibZ/fDmTj2BVrObYXsQ6bI04nRrzp13HZlD6
         qq8gRDdv3CEGfqLjt3bW70er+BJ5kbuxJjJgLNbha0eYGMpgMit1+5ytejbzQ/B1TYSE
         XRSfyU9BVkFVjG/TBZarVljeaUIEti5acXA9mElq3liR4aEC0TtI8st18JYmymT6t6/Q
         txSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=pdFUlLX35IIue06yabur7DhxoDOR1CxUctMuHesgZ2s=;
        b=VABKxKQmNpJDOtWlU14SooYULUs9N/GJzgtMv9KMemtxCr42CwBE9iVeTxWHoqNNnW
         qQcDqWLwSSNZcMARrleUCJI9OyrL5aJfrS1y3k+OX9D/PaI8LfkgUpPBIuqY5lZowjw5
         C7ES/SW9wCvMoRGNAzxMrEj/OJQKnYa+A7VLkn2oR+NCBGLs7j7jMtXIgJNRCVJWEBNC
         irZjP9NBmi/L+ljy6hce+di4JWbmZHiyRNqwlU6Qfr4OdYIajzDuyBPK/RpT94qDQS6k
         MywtJCizOQonQnohZVBTu19QDjS582iMNzFoNINxiyA+Y2jL+FmlFWQXMNHGKzLT8IgZ
         dyOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bf8bJANx;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415801; x=1686007801;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pdFUlLX35IIue06yabur7DhxoDOR1CxUctMuHesgZ2s=;
        b=DWze+tVg+afn8CA4QXhA911ppMmqiWfSNrt7DXe8g4OBrsUN1qrxxAwuGpuONAOxTL
         sl8uD41M4vvLmuw9AODirHFxtl1DSbIg9Xdiay7VEWnHc/IVKuDfZDhwRXLdGFzkEgtW
         AWgu7K+z4+hJme9q8O+FqTsfCHGW7puKIJiA3XDU1QUhNhDOFowqQT6NhpmjarLCp62Y
         uwzeJOnQJN1Ko16gxO2HPXgsPZ2a5D7pxo9dmBeiqrEZHvBD6SqD/7nmHZnpMKaMRLYZ
         k/lrL8+gGqg3PsFqqcaKJ6NNNsO12a/j6dtbktDORA00AdgCe5fXQOHqdJf2X2arsSYW
         a9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415801; x=1686007801;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pdFUlLX35IIue06yabur7DhxoDOR1CxUctMuHesgZ2s=;
        b=A2Ek5Zv/wJK5FASriFMtMbLjVvSQ2vqspOC3bKiZoUZ8kSmrNyxRNiPyT8mlifGjMi
         Wn6tdHkJw8bzv95Xh+LjTYdxJejm6bnD0c6cpHC0NPiYWM9FJF906o6u75z0T2mvt2vs
         MXbr/AQHD9nVQIU0qviOGhkOmi5WvGoGo/rCKzhfco47iYlRRQN1Mp+WfPweS8f3kHUu
         rUQNnEDvYTL/oK0DfElK6+Ce5+4cZeZNhN1rbPr5b+gRDNFt+ABU/smkWYRPSEjN3ncS
         ZuY56VxyN8N+71HyBx7CDe89K3d74wbpk1Q1CWZA0ShT5Dr3TAtIch1X8K/yz31jz0HQ
         o+bw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDzP5XeQIS0TIYVPWhmEomGTCFW1/uquFuGsPVirhH9e0NqMdImW
	9ftvbdHVeLPSQLUjZQJmlOI=
X-Google-Smtp-Source: ACHHUZ7fBkLe8pLcTMnorAtXQ4l/kI/BJuyXCTLQepbxyQDuOePx+ttUu2jS+0AXaBQX4hCVEXe2Ow==
X-Received: by 2002:a67:c214:0:b0:434:82c3:bfed with SMTP id i20-20020a67c214000000b0043482c3bfedmr2701289vsj.6.1683415801484;
        Sat, 06 May 2023 16:30:01 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:aa15:0:b0:450:2005:769c with SMTP id t21-20020a1faa15000000b004502005769cls223863vke.6.-pod-prod-gmail;
 Sat, 06 May 2023 16:29:59 -0700 (PDT)
X-Received: by 2002:a1f:e483:0:b0:440:8c8b:6a45 with SMTP id b125-20020a1fe483000000b004408c8b6a45mr1672936vkh.2.1683415799569;
        Sat, 06 May 2023 16:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415799; cv=none;
        d=google.com; s=arc-20160816;
        b=rMEBbcqZpWnGNQLtEjHVerWAsb3xasAZh5UkpnQP++2LxJAAD1Al7GtJEq2tWRDe7a
         WR7/opWbbHFcca1o1bWE88Umzsd2DObwZ0pXn1ancCTWjYb6X34uRX5uPd6Q09oT1w8O
         lWnBoqong2oinhlsk/p9grte4+KhSnhh8bwgT0BdS13mPh29bl9EzDIgE8Saw/+W5YEN
         zRkl3kLKLAKvm02FA2+5reVcKZDG2p5Uh/e9iX0MexSEW95Z7MOABQhcbjcB9S5gwldt
         MMxDscNiGJCNAbEayOCoNRwHrYqD2r3xhV8u4YjyFm84QGgU7BjgoH1S41+Fj7k+/yzB
         DY5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+gNvFiVxqoiEcwnyK8XYJDq5WEteQhpcSXCb2jal7a0=;
        b=R0Y4AaaA3K7cQZsIhRJ+3iMTR+WUMo3lfAOmOE1Gj9+cW5pbmYQ7gA62jZ1fL9dEeS
         wf6ztIUvCgGRRvb0qmqhgOFqJrZwkIXLKgjurgCBJf29ziHD52ZjEnhfHOScd0fsNcye
         /3HwlThZbHQS69RvBLgOqYWR7FDA0i0eHswXQS2IU7afW4MClEcac1IswVE5YRjQWatX
         Q+wgpL+KMAbuBulobcFwjiMNKKiHkFse+YwWsEcntmTRD6WuJvkOORSpWetiOxFjyLFq
         z56QshaoJkli2Tq4DAdRzE7sUu/sL/9lLY0H3PGoWTUQa+VofQ2xd3FY9sM6sfy7HXw4
         LmLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bf8bJANx;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id n28-20020a05612213bc00b0044f89ac0658si196010vkp.0.2023.05.06.16.29.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-557-9Ma0TpdnOWKX11mgr_TQyw-1; Sat, 06 May 2023 19:29:54 -0400
X-MC-Unique: 9Ma0TpdnOWKX11mgr_TQyw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA39385A588;
	Sat,  6 May 2023 23:29:53 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 21B37440BC;
	Sat,  6 May 2023 23:29:53 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 01/11] iscsi: create per-net iscsi netlink kernel sockets
Date: Sat,  6 May 2023 16:29:20 -0700
Message-Id: <20230506232930.195451-2-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Bf8bJANx;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
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

Prepare iSCSI netlink to operate in multiple namespaces.

Signed-off-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 73 +++++++++++++++++++++++++----
 1 file changed, 63 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index b9b97300e3b3..be69cea9c6f8 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -13,6 +13,8 @@
 #include <linux/bsg-lib.h>
 #include <linux/idr.h>
 #include <net/tcp.h>
+#include <net/net_namespace.h>
+#include <net/netns/generic.h>
 #include <scsi/scsi.h>
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_device.h>
@@ -1597,7 +1599,11 @@ static DECLARE_TRANSPORT_CLASS(iscsi_connection_class,
 			       NULL,
 			       NULL);
 
-static struct sock *nls;
+struct iscsi_net {
+	struct sock *nls;
+};
+
+static int iscsi_net_id __read_mostly;
 static DEFINE_MUTEX(rx_queue_mutex);
 
 static LIST_HEAD(sesslist);
@@ -2552,14 +2558,32 @@ iscsi_if_transport_lookup(struct iscsi_transport *tt)
 }
 
 static int
-iscsi_multicast_skb(struct sk_buff *skb, uint32_t group, gfp_t gfp)
+iscsi_multicast_netns(struct net *net, struct sk_buff *skb,
+		      uint32_t group, gfp_t gfp)
 {
+	struct sock *nls;
+	struct iscsi_net *isn;
+
+	isn = net_generic(net, iscsi_net_id);
+	nls = isn->nls;
 	return nlmsg_multicast(nls, skb, 0, group, gfp);
 }
 
+static int
+iscsi_multicast_skb(struct sk_buff *skb, uint32_t group, gfp_t gfp)
+{
+	return iscsi_multicast_netns(&init_net, skb, group, gfp);
+}
+
 static int
 iscsi_unicast_skb(struct sk_buff *skb, u32 portid)
 {
+	struct sock *nls;
+	struct iscsi_net *isn;
+	struct net *net = &init_net;
+
+	isn = net_generic(net, iscsi_net_id);
+	nls = isn->nls;
 	return nlmsg_unicast(nls, skb, portid);
 }
 
@@ -4937,13 +4961,42 @@ void iscsi_dbg_trace(void (*trace)(struct device *dev, struct va_format *),
 }
 EXPORT_SYMBOL_GPL(iscsi_dbg_trace);
 
-static __init int iscsi_transport_init(void)
+static int __net_init iscsi_net_init(struct net *net)
 {
-	int err;
+	struct sock *nls;
+	struct iscsi_net *isn;
 	struct netlink_kernel_cfg cfg = {
 		.groups	= 1,
 		.input	= iscsi_if_rx,
 	};
+
+	nls = netlink_kernel_create(net, NETLINK_ISCSI, &cfg);
+	if (!nls)
+		return -ENOMEM;
+	isn = net_generic(net, iscsi_net_id);
+	isn->nls = nls;
+	return 0;
+}
+
+static void __net_exit iscsi_net_exit(struct net *net)
+{
+	struct iscsi_net *isn;
+
+	isn = net_generic(net, iscsi_net_id);
+	netlink_kernel_release(isn->nls);
+	isn->nls = NULL;
+}
+
+static struct pernet_operations iscsi_net_ops = {
+	.init = iscsi_net_init,
+	.exit = iscsi_net_exit,
+	.id   = &iscsi_net_id,
+	.size = sizeof(struct iscsi_net),
+};
+
+static __init int iscsi_transport_init(void)
+{
+	int err;
 	printk(KERN_INFO "Loading iSCSI transport class v%s.\n",
 		ISCSI_TRANSPORT_VERSION);
 
@@ -4977,8 +5030,8 @@ static __init int iscsi_transport_init(void)
 	if (err)
 		goto unregister_session_class;
 
-	nls = netlink_kernel_create(&init_net, NETLINK_ISCSI, &cfg);
-	if (!nls) {
+	err = register_pernet_subsys(&iscsi_net_ops);
+	if (err) {
 		err = -ENOBUFS;
 		goto unregister_flashnode_bus;
 	}
@@ -4988,13 +5041,13 @@ static __init int iscsi_transport_init(void)
 			"iscsi_conn_cleanup");
 	if (!iscsi_conn_cleanup_workq) {
 		err = -ENOMEM;
-		goto release_nls;
+		goto unregister_pernet_subsys;
 	}
 
 	return 0;
 
-release_nls:
-	netlink_kernel_release(nls);
+unregister_pernet_subsys:
+	unregister_pernet_subsys(&iscsi_net_ops);
 unregister_flashnode_bus:
 	bus_unregister(&iscsi_flashnode_bus);
 unregister_session_class:
@@ -5015,7 +5068,7 @@ static __init int iscsi_transport_init(void)
 static void __exit iscsi_transport_exit(void)
 {
 	destroy_workqueue(iscsi_conn_cleanup_workq);
-	netlink_kernel_release(nls);
+	unregister_pernet_subsys(&iscsi_net_ops);
 	bus_unregister(&iscsi_flashnode_bus);
 	transport_class_unregister(&iscsi_connection_class);
 	transport_class_unregister(&iscsi_session_class);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-2-cleech%40redhat.com.
