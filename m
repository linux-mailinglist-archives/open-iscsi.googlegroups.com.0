Return-Path: <open-iscsi+bncBC755V5RXMKBBLF5R6PQMGQEWMU4HJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA6C68F5C9
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id j20-20020a05600c1c1400b003dc5dd44c0csf9234484wms.8
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878064; cv=pass;
        d=google.com; s=arc-20160816;
        b=vJsyE+YsoMsvQPj4K0gi9YIHdKX0CEHtTNIiEbAkPr+jKnfAGBQH1jcBHLMzweivn9
         StfNHYUYW1Zo2zlzXvMLwHB/vgoWscYDwOk6OPYjPMdGTxjCGjVe8XX89wdykJwTsu3q
         EkZWV8NIsusHwaPPsYqZlKcVOfahblS+GCAR1a5T2rGxekovVQdCAw16qL2G4Mfxyk6U
         IW9ImAYCwBD63DDrsuJVBX4xIrvqf1H8kaYWu2fwk5/6OXm9nCfwyhL2dRwIsg/vGj0r
         Zkh/3KSTbJ0cwfP4yptpF2IBA0HSe1VJ1oRE1lHX1sxI13BzZu4XSE67N4zV89RWJgMJ
         Zcwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=KNz2kK7/z1VbZiW/2E97hvUF0fOEfov0ZvwjVm2F0Es=;
        b=lPw/8QMlgR+ruovhnI9ZfgzjFnhsMxXoKH6MHAWsJjC+cD9GIvJInvWGjRGTseH7EJ
         dDZlSdMi9UV37glHZgRu3nwz1Rhk71LejhT/D9SQDl12W8SNUsLKy3RziHWWVcU729Vb
         rVwgQVELNYSo2NXDXKAyTA7wuvpp0CO5tkusn8p78wX9hJS16GZPVAY+/VwivFwpBuJI
         kmdSXhVyLZc6iEf96Iivuwg7SsInpMzGEsHQ0AL83+0sYaWKxotqK5xRSueBKRksCDEs
         5XHUxfFFVomos1JwBFythLEGAygN0CUlMXZ3RVmLDTRziwHxuyq41db+k8JDCvZ7nZdv
         SxcQ==
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
        bh=KNz2kK7/z1VbZiW/2E97hvUF0fOEfov0ZvwjVm2F0Es=;
        b=nYVguhl5Bx0+Bnzxjf6/Ih1QAH8T3Gyvd4XPqRgNfBPxbtLKr5zsgD1gOsow8Kvdex
         FgYlwwlWEZhvhGZIo3AiSD9o72J08er3smqgqATZnzqEdNL91iYYX50HTGXeBJLoEOWI
         41IqfdqCseJtw/jc31DLf+2WW1AuJy192fEKoq4g8B4JNsZYn3p6v87x6EhIpKsPCagx
         +/ZwRJUV7mcU2iTP/e7M1UsHKihRoOSyUH8SLh/uLMm4Cp+AScHO/2P6xPhcg3g/yiDc
         HzJ29bC/k1mQpkgwK+6atXAGPe8q9Z4l9si6x4yQX4ZA0iaaOqJLpZF2HctdAC0Et+NX
         3eEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KNz2kK7/z1VbZiW/2E97hvUF0fOEfov0ZvwjVm2F0Es=;
        b=LxgqmmpcmIw9A+Nd5dLyONq/rCsIUVbHwadONbr6Dih8Q/oQfn9Oij1wIMyXl5dd08
         lHFQOZyUxLSiPoB58xLDeReJyXjHm4RH1uigSTo67kW9VIVtRAyaSo4fCCIZAI/ovhAn
         BIwJiNyT7TCiV6sb3X1rhMSnZGZzHWjcFrRw8v3HXM2rhRNER4QSRMr5+maUfSoM58Ey
         bfK9BWGuB+3bCfrY6eckfNJV21HGy2c5XgcWj1ZvutS8rg9VGo8lcaRyEHIMGs7bx/1r
         lCTpFuRYRkaXvYjkyClmJDlkRxrO7setN73GrzwjoNzKY0KK/6z6kghmugbeRLohbodE
         fQ2Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUevP9eebIuCQ7uTehdhh9H12VRGnM4qnnJ0KQJikum/u+0qwv7
	+fRh1j9zyu8REjmUKSPzWbA=
X-Google-Smtp-Source: AK7set9WpqO5h356dRQeu0lswj1zotjG6fISCm/MrAKPlyiPjaRg1ANY57QbhtpRUvDs8l9OYRjWOg==
X-Received: by 2002:a7b:c4c8:0:b0:3dd:1c4a:8a28 with SMTP id g8-20020a7bc4c8000000b003dd1c4a8a28mr322881wmk.40.1675878062203;
        Wed, 08 Feb 2023 09:41:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:5c05:0:b0:2be:34f5:ab03 with SMTP id cc5-20020a5d5c05000000b002be34f5ab03ls489951wrb.3.-pod-prod-gmail;
 Wed, 08 Feb 2023 09:40:59 -0800 (PST)
X-Received: by 2002:adf:ef8d:0:b0:2c3:d296:7a84 with SMTP id d13-20020adfef8d000000b002c3d2967a84mr7884540wro.17.1675878059520;
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878059; cv=none;
        d=google.com; s=arc-20160816;
        b=YGIZONcqbq/wDucXDzTe1dUdyxVe/gldhyW5mk3hd4cvtZtQnDAzRxMx6+Jmg+qOIS
         +BxVUdkgVKtbAtXifWEqFigh9gJLKMd2fv1981qKLqu/Dx/COPkiAvgJEJ90RFGn6akv
         Ipku3cYgdbsZdN2VtVc/kzjU5uhGqaFEvD8XQzCs1x8UGTzkI3S+iLr1262FgrUUdnPh
         6Fnijb7RwBSn39gf6plmPYPX1iuEZ4/JluHVC6dXsjXU6xr2NuANn7hZtAcesQVAlJCN
         K3Qti9uPTzDYW7lx7KkUdg8hrSMTR0TLgQ4EWMDb/SAZVrJXY8ec3BtJNaasJjplkwX0
         kv5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=mWjwrrnsZ50aHtvwbz0rkEEDZZjm9gFt0KffW0ILMLM=;
        b=nyNUyI6vBqvLaLGiVvcuotFKmr7IT0lJHLqy40MRH417WWEiDF3455XFPMgGsaHVm/
         FRrWeRy6SFiAwB+3AXwa5S56OjFNyHAYf1Ai0hXD4hE+LxRO/1d6Oxp2miabM8gJg+oI
         +d6RtCOUirhmkm/lY49OGUPzFgVCu8jbCALYiHPnyC3BVgtQIiVIIQ5/qN347vt7XcbK
         YhoFWP4Ck8/+7GXvLCjXD+mMhTQWLZ9NWbLcqR3ddprDWId4AT+c1KPbbldMv1SOcECA
         V4j0sI30ak4vhkzbTcCQuAruO5uOCSqdUfv6J+bjSUYB6yIsdBjqupgmm1rFGjc63uSI
         CMHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id ck1-20020a5d5e81000000b002c3e698d7a3si506015wrb.6.2023.02.08.09.40.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 40A9C1FF18;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 010642C142;
	Wed,  8 Feb 2023 17:40:58 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 208A3CA186; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 1/9] iscsi: create per-net iscsi netlink kernel sockets
Date: Wed,  8 Feb 2023 09:40:49 -0800
Message-Id: <95df16a252bc2c9f0e7fba667d2f542814c9b91b.1675876733.git.lduncan@suse.com>
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

Prepare iSCSI netlink to operate in multiple namespaces.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
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
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/95df16a252bc2c9f0e7fba667d2f542814c9b91b.1675876733.git.lduncan%40suse.com.
