Return-Path: <open-iscsi+bncBCYMVIPVXQMBBNVTRCRAMGQEW3LB7AI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD516EA2FB
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Apr 2023 07:06:01 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 3f1490d57ef6-b98f3ca02b5sf808784276.1
        for <lists+open-iscsi@lfdr.de>; Thu, 20 Apr 2023 22:06:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682053560; cv=pass;
        d=google.com; s=arc-20160816;
        b=RK0nIKTJuAyOnvhXvakQmWLe4zzxOi5+Hng/AwY+aSzL/1kkXiW/1I298SLBfVgmZZ
         5ozLx0iHfvKD4uaolG2zSJyWwbjDI9MhqDZK7eVQqYGgV9rZEMrBZtfgG/BGT9V7LT4T
         Lsl1ybXprGuEkY14Om4W3vGuUCQd2FqCtUYlkKLkM8MnkMwS2aot2b2oaxFMpzZXcPEl
         +ng017NMonjV1fi4ANQiTRNV3OTw1pt/Cax7CQukQul02JWRfCrQr0o6r8+DsZmwfJv5
         PY8iE3m454zmgCFmkD0QtmOGwWrIC2sgs8a+6xeH713Nj4UE+wUe999/jmgj0UzKoS0q
         GIKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=iWmAN28FKlCS7G3LjCP+qlDRRQdsQJG4WAsmzy2QU6o=;
        b=iuYjmQXzsnhEytJLVIdx099DInRnt0q348qnwObWqlwq5COzzE5C9pPOW1jbFBSyjp
         ca+FS8i3PU58iwDcCP+uv7fopW+SpBRhBbMQeEuZjJxJYbigRa9r6KTC4sqzuCmWxIQ3
         T2tqT37xcva7X3u0szGM5uzNU4mHhaG8reIzzcHDTxm4ptjpqlh2Ws+uh9IdqpeKikBA
         X3xrtmgo+kW6MuZEV6YKT3++k7QyO7T58ic95YAcpl7P1BoHzoOVUQOX7F6Ub3s1op3p
         BpCpihOEcddS/3iLI0Jz8mbWFLtLh5jslgGvP9s+TolWHy/H1PYyDeSq5h4j3RpEoCvd
         R+1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="MYH9/wfe";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682053560; x=1684645560;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iWmAN28FKlCS7G3LjCP+qlDRRQdsQJG4WAsmzy2QU6o=;
        b=A/nFyo3yJWt57PRKrv3CCKmBSyhTqrN77z8G82BvRIILMVpjFI5ZM5ycVU1+4atSGo
         wCqMu5eZtjfSAXuOiCy68Ja1Ba++8vZqEJAugDAAcRx4cNu01Mk1me6pK/huqw2XOzMN
         S8Q2Zsn+a5qCWFzoWxad3z5h1bJRRE37qqbTVsPSzO53Jd9YSMZ1jMQLtriDhN45Jaez
         m36nzVdNPDwz6TLAqrJ4hi8HuieCjDPECnAQeE3VJfu01SoNFYYl7+6ehngSyHWNShil
         WHe/CpbCM4wflV2F2W6Lol5pmcuowFEbOyRp6rK5I/psT9zE9fyNQ3KGicBMKtASNmRJ
         v9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682053560; x=1684645560;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWmAN28FKlCS7G3LjCP+qlDRRQdsQJG4WAsmzy2QU6o=;
        b=Fp/xm/EnumJ6q0QfgVp+0yRmKpZx/nHYphAU4TG5btp5euyq4BU8MTtjvcw/btte0c
         /vT/Jj5gJGd7fSCTT4f+hDWsiaabx9P7FxFun35QQPe7PTxVRvjLvwlzPf9OKekzADiX
         02gRNnmXv0ahWYMPWe8jkNkNV14wFhLBXtjPDjF051+L4FqJLQgsGIqWfO1mbrzp0xWM
         zC2DqnL2BazQ7yxZ8CVTpIiNDCfiADi9vpZdFQLlQ9cR7nQ8j58Sr0wCy7Lonce2YOGo
         hklYZeT4F6siSryKyN4VDst9UV8FZLnOqgrGaoKj3RBqE95x+4wDCLMgZcqRPostgfgi
         MNAw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9dtgaTgvH/04iGQoUDTpYqAi1riztcWgEtes7bq8+GElTcS7aiq
	p39P6853/1iSq/+0irTK4ic=
X-Google-Smtp-Source: AKy350a1zjuEekT6Ui8Eu1wtHufgPCUN/s3+inTw5YbFNOmnfYhfbeQajFQekH9NpIDeuvzVMJrEVQ==
X-Received: by 2002:a25:d213:0:b0:b96:5b8a:3c34 with SMTP id j19-20020a25d213000000b00b965b8a3c34mr679426ybg.11.1682053559986;
        Thu, 20 Apr 2023 22:05:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:740f:0:b0:b96:6d64:142c with SMTP id p15-20020a25740f000000b00b966d64142cls2114667ybc.4.-pod-prod-gmail;
 Thu, 20 Apr 2023 22:05:58 -0700 (PDT)
X-Received: by 2002:a25:841:0:b0:b95:9e75:ff0d with SMTP id 62-20020a250841000000b00b959e75ff0dmr952362ybi.36.1682053557947;
        Thu, 20 Apr 2023 22:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682053557; cv=none;
        d=google.com; s=arc-20160816;
        b=Xcc9w3zuWAG9JnQH97RhlAl68oXN0SUthbRVPmnKzD6UxYg9Ygx0kTydp0O7/uAzC9
         qG6qYKAURCPVK4gLnPqEQuWEOwG1arsR0VWVBv5ipCA9bwZTKwixg1GjtAOEu+46xvY1
         C9pfssRCnxTzJ/XGf+1rZHT3OWSl6JXXQmpydwAe8Af5AkiUaAY5BoM9hH/xBRogrLY0
         cmulNb6FTgqspPL0EvMUsdSPjfsfebd15jvU/a7b4yGF7WxtIUIhF1tbJWwBFBO0P6uv
         GOlNAhS1dmR+f99462Zv3A7j5fXgp1Q0v5m2PAyV25dZs2B4AScpZGrNqvs/4mvnhB52
         h0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JeBqBXc6xJc1N0ml9lM86IC8CjoavxXOPuLqA1dkxw8=;
        b=qp6lGpeqo9ZKf8HTkl5SBxTDEB6VeJjtBi72XqGOcx6J80ASpVmYEaApyyUCeo67/1
         yoW8dvfr4+mFNufCxP7mNOfCf8wy1dr/8IIjt11JD1fTb8p51IMztchBDS6UiCLbtCjn
         yRv+6nnnqVLxUZuxzb/IX/9RI4BfVl1lgb/57959gIXu+wpQenm6ccy/iiAbtlyhl3FX
         tGJBg9h1HuY5qXYzBuSZ3ZtPy2nQwsuoE/XZ9ldtFppiSoV593lK50tx1V5kcfyJpK+W
         tHvQOsRAZ94zUrcsBI2a1tIZNU0+ZHOYjQvL2T2A/bsdApRtMc243HUIyUHec2oolYjS
         FPgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="MYH9/wfe";
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id a5-20020a056902144500b00b99240edca0si34891ybv.0.2023.04.20.22.05.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 22:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-135-aE7pLG6oPMOAlfBk9e7B6A-1; Fri, 21 Apr 2023 01:05:55 -0400
X-MC-Unique: aE7pLG6oPMOAlfBk9e7B6A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76B253C01E13;
	Fri, 21 Apr 2023 05:05:55 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.204])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E1C684020BED;
	Fri, 21 Apr 2023 05:05:54 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <leeman.duncan@gmail.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [PATCH] iscsi iser: enable network namespace awareness in iser
Date: Thu, 20 Apr 2023 22:05:21 -0700
Message-Id: <20230421050521.49903-4-cleech@redhat.com>
In-Reply-To: <20230421050521.49903-1-cleech@redhat.com>
References: <20230420164232.GA27885@localhost>
 <20230421050521.49903-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="MYH9/wfe";
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

Move the logic to store the network namespace during virtual host
creation (due to the way transport-class object setup callbacks
function) from iscsi_tcp into libiscsi, and share it with iser.

Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/infiniband/ulp/iser/iscsi_iser.c |  7 ++++++-
 drivers/scsi/iscsi_tcp.c                 | 10 ++--------
 drivers/scsi/iscsi_tcp.h                 |  1 -
 drivers/scsi/libiscsi.c                  | 12 ++++++++++++
 include/scsi/libiscsi.h                  |  4 ++++
 5 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index ecb8aba1cee9..381f48a832ce 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -646,6 +646,8 @@ __iscsi_iser_session_create(struct iscsi_endpoint *ep,
 		if (!(ib_dev->attrs.kernel_cap_flags & IBK_SG_GAPS_REG))
 			shost->virt_boundary_mask = SZ_4K - 1;
 
+		iscsi_host_set_netns(shost, ep->netns);
+
 		if (iscsi_host_add(shost, ib_dev->dev.parent)) {
 			mutex_unlock(&iser_conn->state_mutex);
 			goto free_host;
@@ -653,6 +655,7 @@ __iscsi_iser_session_create(struct iscsi_endpoint *ep,
 		mutex_unlock(&iser_conn->state_mutex);
 	} else {
 		shost->can_queue = min_t(u16, cmds_max, ISER_DEF_XMIT_CMDS_MAX);
+		iscsi_host_set_netns(shost, net);
 		if (iscsi_host_add(shost, NULL))
 			goto free_host;
 	}
@@ -1029,7 +1032,9 @@ static struct iscsi_transport iscsi_iser_transport = {
 
 	.ep_connect_net         = iscsi_iser_ep_connect,
 	.ep_poll                = iscsi_iser_ep_poll,
-	.ep_disconnect          = iscsi_iser_ep_disconnect
+	.ep_disconnect          = iscsi_iser_ep_disconnect,
+	/* net namespace */
+	.get_netns		= iscsi_host_get_netns,
 };
 
 static int __init iser_init(void)
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 17f07ca2bbb8..3150d9c7a1ee 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -947,7 +947,7 @@ iscsi_sw_tcp_session_create(struct net *net, uint16_t cmds_max,
 	shost->can_queue = rc;
 
 	tcp_sw_host = iscsi_host_priv(shost);
-	tcp_sw_host->net_ns = net;
+	iscsi_host_set_netns(shost, net);
 
 	if (iscsi_host_add(shost, NULL))
 		goto free_host;
@@ -1068,12 +1068,6 @@ static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
 	return 0;
 }
 
-static struct net *iscsi_sw_tcp_netns(struct Scsi_Host *shost)
-{
-	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	return tcp_sw_host->net_ns;
-}
-
 static struct scsi_host_template iscsi_sw_tcp_sht = {
 	.module			= THIS_MODULE,
 	.name			= "iSCSI Initiator over TCP/IP",
@@ -1130,7 +1124,7 @@ static struct iscsi_transport iscsi_sw_tcp_transport = {
 	/* recovery */
 	.session_recovery_timedout = iscsi_session_recovery_timedout,
 	/* net namespace */
-	.get_netns		= iscsi_sw_tcp_netns,
+	.get_netns		= iscsi_host_get_netns,
 };
 
 static int __init iscsi_sw_tcp_init(void)
diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
index f0020cb22f59..68e14a344904 100644
--- a/drivers/scsi/iscsi_tcp.h
+++ b/drivers/scsi/iscsi_tcp.h
@@ -53,7 +53,6 @@ struct iscsi_sw_tcp_conn {
 
 struct iscsi_sw_tcp_host {
 	struct iscsi_session	*session;
-	struct net *net_ns;
 };
 
 struct iscsi_sw_tcp_hdrbuf {
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 127f3d7f19dc..ca8856c24688 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3929,6 +3929,18 @@ int iscsi_host_set_param(struct Scsi_Host *shost, enum iscsi_host_param param,
 }
 EXPORT_SYMBOL_GPL(iscsi_host_set_param);
 
+void iscsi_host_set_netns(struct Scsi_Host *shost, struct net *netns) {
+	struct iscsi_host *ihost = shost_priv(shost);
+	ihost->net_ns = netns;
+}
+EXPORT_SYMBOL_GPL(iscsi_host_set_netns);
+
+struct net *iscsi_host_get_netns(struct Scsi_Host *shost) {
+	struct iscsi_host *ihost = shost_priv(shost);
+	return ihost->net_ns;
+}
+EXPORT_SYMBOL_GPL(iscsi_host_get_netns);
+
 MODULE_AUTHOR("Mike Christie");
 MODULE_DESCRIPTION("iSCSI library functions");
 MODULE_LICENSE("GPL");
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index e39fb0736ade..acd868b5f6ef 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -383,6 +383,7 @@ struct iscsi_host {
 	int			state;
 
 	struct workqueue_struct	*workq;
+	struct net *net_ns;
 };
 
 /*
@@ -492,6 +493,9 @@ extern void iscsi_pool_free(struct iscsi_pool *);
 extern int iscsi_pool_init(struct iscsi_pool *, int, void ***, int);
 extern int iscsi_switch_str_param(char **, char *);
 
+extern void iscsi_host_set_netns(struct Scsi_Host *, struct net *);
+extern struct net *iscsi_host_get_netns(struct Scsi_Host *);
+
 /*
  * inline functions to deal with padding.
  */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230421050521.49903-4-cleech%40redhat.com.
