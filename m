Return-Path: <open-iscsi+bncBC755V5RXMKBBLV5R6PQMGQEJL65PKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C84168F5C5
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id o2-20020a05600c510200b003dc51c95c6asf1202722wms.0
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878063; cv=pass;
        d=google.com; s=arc-20160816;
        b=CyZeRuoseVT7i64WLAPW5+oooqwZwaqcPA3YAe4vWragKW9MvaNvxn0EHgOHWh5gKW
         IC7fB1sXgFrPZlvEs71FUzSIFIr6vqXjRS0dgB6As4KBw405y7FWLJZwF29P7f+f/9gE
         sRp6OTlWIeWLg/S8xbrB5LrucRZQ/Yau1zsQWvRlA1Iehn4iPvJrWxugaA831vD51wyf
         rM2+0cKcM/FHPrscFJdG2vOM/eCf+Agw88ddZ9Br79XCUgmE89+GLJGtANyklLfnwjpe
         LfT++nV3gAQUoe9aECSP/0CgiHcljxSR6ameXGN4T/gPvVtnFYIvFvK/wk8hKfAucout
         0L8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=NBaqg5LJMmcHOEnLmKWaeNjDW8xxKwsAeTuR1iAbRfw=;
        b=UChqsY7khR9vloVmongxiiPSEyJTegoLvsKkpBs6ooql83NL4qrd4zXUGP06LdD6Hl
         lZmVFRIf96J673K2xpRyu/QiupNegCCFeJSsXcKdlBEdfrB34uwTpbhJp9MgQbUsZh9a
         WC9fPpXkRrqSBK1XC2U97N9wi1LBtB7B6q7038SoE+2By/e1GSicZEG/fu5uXwzCAZ/8
         Tijzp5Vk5UX4bx7Sw+UKpkK0EmdzC7pwTM2n9ShziZ6pYwUvZND8M2jykll5ZDwhNILg
         3Ajxi1Z1YE2HzDq3gY4606kR7bTaesPF/wVE9WZ7sjlvJQy++iH8O5Hczc7a3X5s9pcg
         n/Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NBaqg5LJMmcHOEnLmKWaeNjDW8xxKwsAeTuR1iAbRfw=;
        b=bAribKScvV3QxL+Albw+55i86Hauf3Y/8L8UmR10KQ8SnmwqR3OvH7AUWuPxwprpbO
         MyzVsshSGONKK7SIm/Bb9SULlNFsJKxLTpp7z2Vc5IEb9dk9r5PE49Xb+G0APYfCvwMf
         uyMvUSnSIbwJVuOjeyRPUR+AaM3plLepbWL8RcuUD00ZSfk9mf8A0LzCSPMTbdSGXMGM
         rSfcoWnnXPY7hTxqgSCvLeQR3U8zCzbWP9/EAPEL4rHSqUlW7E5xTABCHF7NG8EaSgw6
         FV+DLh2Ys6UmVfzy0yIUKqUDuUB0mM3UFhk0F3IQhArY6wANY+42LFAR5+elwOUWbhco
         P3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NBaqg5LJMmcHOEnLmKWaeNjDW8xxKwsAeTuR1iAbRfw=;
        b=jrx+MCtEyN4blI7rPvpuQddPOs0ZLWyC74m1YowCmhuPivK3bRxRrrU1lNnkNlH0Xo
         5k38S/K+FCYId82DuPTzUASdWabwYhwaDp6niNhAtXFbcDZmf8WyNObgHVbA9LdoGpsO
         THI85liTmZbsy6e4ZIy44ziijOTog0D3zRGgkMbajoAWAnmOUeEljhmwTdziAt84nkuP
         06uVR7jE4CSVd/oVJ+trsvYrI2y4TOgw6clhsaeP8imnsb7vD4Vk88dJha7ixu+m7vKi
         O4S4sNSO9dUL3gA9hEJjOaZ9j0+Zyakr+/xEjc7y/gdhoJK6OkUyswjOei2lI9uY4ctc
         icfw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKU83QD/+GuOX4HMy+PYfh8C62l0lgw/e14XzZC/WaoFS/9iJH32
	B1pGmQmM3OkegHs1kbyBkXw=
X-Google-Smtp-Source: AK7set+KjIq/Bwn/v/dgbaQetBBCR0DtGTk+5DTEPQnIECLk5lefN4Q+ZPn+5Aj9UH+geu2z+VOzaw==
X-Received: by 2002:a5d:6810:0:b0:2c3:f26c:a862 with SMTP id w16-20020a5d6810000000b002c3f26ca862mr379898wru.514.1675878063813;
        Wed, 08 Feb 2023 09:41:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3ca6:b0:3cd:d7d0:14b6 with SMTP id
 bg38-20020a05600c3ca600b003cdd7d014b6ls1445903wmb.1.-pod-control-gmail; Wed,
 08 Feb 2023 09:41:01 -0800 (PST)
X-Received: by 2002:a05:600c:993:b0:3e1:577:80f5 with SMTP id w19-20020a05600c099300b003e1057780f5mr4331943wmp.31.1675878061606;
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878061; cv=none;
        d=google.com; s=arc-20160816;
        b=vZnuu0+R7VXDlXHr6B6upG6hRTSuhKNAy2uzS3f6QoNf/iU0jSiYkCEJWu8icstqqC
         ZcRDUn0vwPwUJjssRVPR8BgEMtOWEvuHb7581FF/v67k51BdVSxeXqu7j2k4UEO5+YNg
         6K8dOwJt0sGG5bielyXmZdAYSybYSyL04tq0lUmo+ENsPl2LkXdY1PPHO9hQQFrrFp3x
         q8j0wSeQvCquSMdq7BuTuMXSvpcbh2O4SCjQsRtn47v7/0K7kzj0G77nE13BXf/i40y9
         lw0Y+/HTyfdW2Hswg7Hd0UsTf+1ifXIOLCd1hd9jYUCNT4Rv6ul6Mgw+LuXoMUts/x3E
         NlNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=3U0IEi6aLnhc3++BBW9Q4jP6TmA+0eSC3hyoCyn+AS8=;
        b=M+RSorDrZuhy1yy2OMYscoIXM42wNQsJgMepNsZ+T7ayDHj47A6ovdvkX7CWLH2BCp
         SiSjr4DmY5C7LT/SFwotAfdaySm8HW7u1EHRifpQoBmegFbvWK0bF9cNzCflzSH61QPQ
         um4xYvm2sfMDq3M+td6fI7dcfCPdqlMNMfB+qp8npZvnge15bYlDFMly4egyMaqOMmCy
         LxmzJIF9qX6RoPnEiVLvQcQ7IaN39fJh8y8/+OHqQFvuZ2dPD0Tm6ZHjrnrtOZ/y+ZBI
         Y7DObCr42GeMKfz9NR0BLboTMMzaGxVDqBI+bEP2s4ahQTKB/ukhHypFU6ODoyiuyAsk
         XxGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id bg31-20020a05600c3c9f00b003d9c73c820asi329929wmb.3.2023.02.08.09.41.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 698D91FFB2;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 2B4242C143;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 3D19DCA18E; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 5/9] iscsi: set netns for iscsi_tcp hosts
Date: Wed,  8 Feb 2023 09:40:53 -0800
Message-Id: <566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <cover.1675876731.git.lduncan@suse.com>
References: <cover.1675876731.git.lduncan@suse.com>
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as
 permitted sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This lets iscsi_tcp operate in multiple namespaces.  It uses current
during session creation to find the net namespace, but it might be
better to manage to pass it along from the iscsi netlink socket.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/iscsi_tcp.c            | 7 +++++++
 drivers/scsi/scsi_transport_iscsi.c | 7 ++++++-
 include/scsi/scsi_transport_iscsi.h | 1 +
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 0454d94e8cf0..22e7a5c93627 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -1069,6 +1069,11 @@ static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
 	return 0;
 }
 
+static struct net *iscsi_sw_tcp_netns(struct Scsi_Host *shost)
+{
+	return current->nsproxy->net_ns;
+}
+
 static struct scsi_host_template iscsi_sw_tcp_sht = {
 	.module			= THIS_MODULE,
 	.name			= "iSCSI Initiator over TCP/IP",
@@ -1124,6 +1129,8 @@ static struct iscsi_transport iscsi_sw_tcp_transport = {
 	.alloc_pdu		= iscsi_sw_tcp_pdu_alloc,
 	/* recovery */
 	.session_recovery_timedout = iscsi_session_recovery_timedout,
+	/* net namespace */
+	.get_netns		= iscsi_sw_tcp_netns,
 };
 
 static int __init iscsi_sw_tcp_init(void)
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 230b43d34c5f..996a9abfa1f5 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1600,10 +1600,15 @@ static int iscsi_setup_host(struct transport_container *tc, struct device *dev,
 {
 	struct Scsi_Host *shost = dev_to_shost(dev);
 	struct iscsi_cls_host *ihost = shost->shost_data;
+	struct iscsi_internal *priv = to_iscsi_internal(shost->transportt);
+	struct iscsi_transport *transport = priv->iscsi_transport;
 
 	memset(ihost, 0, sizeof(*ihost));
 	mutex_init(&ihost->mutex);
-	ihost->netns = &init_net;
+	if (transport->get_netns)
+		ihost->netns = transport->get_netns(shost);
+	else
+		ihost->netns = &init_net;
 
 	iscsi_bsg_host_add(shost, ihost);
 	/* ignore any bsg add error - we just can't do sgio */
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index af0c5a15f316..f8885d0c37d8 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -156,6 +156,7 @@ struct iscsi_transport {
 	int (*logout_flashnode_sid) (struct iscsi_cls_session *cls_sess);
 	int (*get_host_stats) (struct Scsi_Host *shost, char *buf, int len);
 	u8 (*check_protection)(struct iscsi_task *task, sector_t *sector);
+	struct net *(*get_netns)(struct Scsi_Host *shost);
 };
 
 /*
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/566c527d12f6ed56eeb40952fef7431a0ccdc78f.1675876735.git.lduncan%40suse.com.
