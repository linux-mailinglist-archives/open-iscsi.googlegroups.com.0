Return-Path: <open-iscsi+bncBC755V5RXMKBBLF5R6PQMGQEWMU4HJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 765E568F5C6
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id l38-20020a05600c1d2600b003ddff4b9a40sf1382283wms.9
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878064; cv=pass;
        d=google.com; s=arc-20160816;
        b=yMag4l7kGlLxxBLExNMyqGQ26Vf+t2pc01vMq4ithKFXnn44cxWzWWpO+wrDNIbMzm
         mvPkRvZ20JloovaOBCCk2NSBUQd6PoCBiRp/iSaKcrosz6viIslsSW8xPgFBsgpbeCzl
         duFD2Qf43DpLVTACCL05R81BLZIzoA4TjmNyPN5lEPzEJ6i9Kmk23hOxGi2o5t3HSWoD
         SZWimBtO/FRW2dExVlMIO9ubcUhTWZuexUG85d2VShe7CV46nxybleW0yOfisOuxbFC1
         bdPExF+e8H9fddRO7R04ZCicTHLwyrRWkMdaRF/O/aqkxAeR+TV4Yrq+HUX0Ppg1SUNQ
         HRvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MkySmnb1eq4CxIft9b5CpFL6Tfs1o7EQy3okkxc6ZzQ=;
        b=yY5c/mPpYbfi8HHrSxNRR1/Av1AZ16m3Yj0a2TI8i0iodcnC0dzbY1a/9Z+t62LDRV
         GD8XHllaOxixlauo2fTmWgxZtCWl87S2gQKBCdMu2jq3GoMYOw1EQYpqmKKfidGvdkY3
         xooW9vlgPOBccHImr/HhMkrgIx946arLcd8c832Osx5nWDThByTHuVcMRzyouP2jH3nN
         8TrrV0vC/rN83czJoBgJSh+eOp0H7PKlVkCz94hmXDjD3cTTdhyPZ737/hA35e0cLFmx
         eAncv9PHTkHw8AJBQjJTUc1kSu7ESuyKIzi++jqsTLJAnsIfl61cHe3h03oQzc/HZDSg
         6V+w==
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
        bh=MkySmnb1eq4CxIft9b5CpFL6Tfs1o7EQy3okkxc6ZzQ=;
        b=tzGPZ3j7heqW807QjkxNepsVuWcDCISnhhOa9f13eC5dOKK/yhaiRiioUrW2ebz4BI
         9CUbPqo97tcj5VN/ByEzT8EGpuBubdwcj99YEJX366g+ZU8n3RwXWVIFpJR8PwsDhlNV
         WUucrBvC+Gcsdqi9WaJUamcf0StaEc6oGZk36tkVoT2eMi8TJ+UioNbq3avB3kqefjgr
         5tHwS825SiYa/pJ+VMTKHcIHl2dikIkVC4LPHqbGVj4NCTMbxU4j0vWEiKQNUQzQaYUV
         lzmcuiXEaGXWXsOD0LMolgoLrcCDj6qIF4GnHC2F0vgIfeuNTly9LBlTa3oA3AnMoww6
         SvUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MkySmnb1eq4CxIft9b5CpFL6Tfs1o7EQy3okkxc6ZzQ=;
        b=ky7t6av3gJWQE8oMThtGZ8UjHaZrRY+MHG04WI8IVUZj+oMqQOEqK7b6L95PksAoNw
         CZAnSOIlxrHJlhcmkVgSqWXREQQGT/MIGVCtIJt7rZvy3CFBjSDwFoYGJSITYrhtLRJR
         kV5QyTVCMiL6RV1VyWjR/aoVD6jfHKGg/ld+4fL63fZPAW1p89jJ3uC86Hsj7vkFjOkf
         8FOtn9TOc1kV7LrlZe+H+xbD4A440OhCXjhkZ7btcOErxPI1Dbn+P8UOK8TlVvaHiqVd
         fsc45hgeLWWtBpYatLn3mEm5+Fu538YmAX4NTBYAzIF9oGhk+Ydowh09XM+oFsa3yfgd
         +bcg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKUw/uvKXA58+iQOgrwJRBMOMuf4//yJDZYlb9NBe3y46aZ14wXm
	oe+gcPXDpb8nZ70MOnqMu+Q=
X-Google-Smtp-Source: AK7set+eAIoA1OTL0A0sRYguE0TMMOp0H8rU9sa1WUNFbT51gH6UK6gx4i0MU4VBZrZNR3r6v9vWew==
X-Received: by 2002:a05:600c:1d05:b0:3df:4bc8:edfb with SMTP id l5-20020a05600c1d0500b003df4bc8edfbmr280547wms.168.1675878062119;
        Wed, 08 Feb 2023 09:41:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:5b19:0:b0:2bf:ae0c:669b with SMTP id bx25-20020a5d5b19000000b002bfae0c669bls488351wrb.2.-pod-prod-gmail;
 Wed, 08 Feb 2023 09:40:59 -0800 (PST)
X-Received: by 2002:a05:6000:1d1:b0:2c3:ba99:44bc with SMTP id t17-20020a05600001d100b002c3ba9944bcmr7741935wrx.68.1675878059527;
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878059; cv=none;
        d=google.com; s=arc-20160816;
        b=ag6Jodx6iaMev4yUgCqjIVrELhOztXDyw93Sn6h9my3Env3yl2LlfzopDZoBzr0Dka
         JnHa7HaNOpYDh9hGTjjxmzAl3zE+JTKNExykSrAyrth1IDKEaMsn40ghc+Drbe7aBHus
         TB8d8d0enJof5WS/HbgVLu1TzpLFwqrFjE1Dli+nkXZ3ssSYLFH2zXdmA0GR4gH0ckyN
         SNOiUbCFhdYgUUwkPlWCNKOrxhrduMYOjJ8d9Eo09SOAuZkxk3yVGJDPXTNqZDPH/THN
         QliSz00bZXceSZq+IQIHaNwPPLFB8N1+09eVFtdRMixWFV/NVwOs3C4UXtWv9bWL+zvZ
         cYqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=3c1iZgMc8bClcdhY0+qWdJSjs8Dvyd94N+1hBiktlD0=;
        b=zalXT+gvcS88qgxADm1v/gkENj98G7jZ0hS0qtKl83AoB9KJDZuwEhXhrAGPBPd0Bo
         ljrMgrpqN65MioaJThzFY0DFZGKETqxRu2IRCcSmz9eg9ndrifVeNJM0qoxnOraKOmt3
         zCNCEmzsvzESezbmTG+pUPhFH0RQ6AGVQUONpyGhK76g1yRzTCRfek1Lu9beHFIsajdd
         JDdUYgg6r0ZciNHQ77YksmvBi93WKkOG9i8LXCEGPy/B1AKsPGJjNwuKk1K00BUGFwyD
         aAt/vmuNhTyxNwx8D5aSESt87LhISoF0WUY+6P8R71U45Qa3nFTKtiUeftgB7mXWr2cB
         23yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id bg31-20020a05600c3c9f00b003d9c73c820asi329922wmb.3.2023.02.08.09.40.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 4CBA21FF2F;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 0D1182C145;
	Wed,  8 Feb 2023 17:40:59 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 2C8B2CA18A; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Lee Duncan <lduncan@gmail.com>
Subject: [RFC PATCH 3/9] iscsi: sysfs filtering by network namespace
Date: Wed,  8 Feb 2023 09:40:51 -0800
Message-Id: <1ce0ef45c40b6873f2889bbcdc1a74d7fc04e370.1675876734.git.lduncan@suse.com>
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

This makes the iscsi_host, iscsi_session, iscsi_connection, iscsi_iface,
and iscsi_endpoint transport class devices only visible in sysfs under a
matching network namespace.  The network namespace for all of these
objects is tracked in the iscsi_cls_host structure.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@gmail.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 124 ++++++++++++++++++++++++----
 include/scsi/scsi_transport_iscsi.h |   1 +
 2 files changed, 110 insertions(+), 15 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 86bafdb862a5..2e2b291bce41 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -181,9 +181,31 @@ static void iscsi_endpoint_release(struct device *dev)
 	kfree(ep);
 }
 
+static struct net *iscsi_host_net(struct iscsi_cls_host *ihost)
+{
+	return ihost->netns;
+}
+
+static struct net *iscsi_endpoint_net(struct iscsi_endpoint *ep)
+{
+	struct Scsi_Host *shost = iscsi_endpoint_to_shost(ep);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static const void *iscsi_endpoint_namespace(const struct device *dev)
+{
+	struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
+
+	return iscsi_endpoint_net(ep);
+}
+
 static struct class iscsi_endpoint_class = {
 	.name = "iscsi_endpoint",
 	.dev_release = iscsi_endpoint_release,
+	.ns_type = &net_ns_type_operations,
+	.namespace = iscsi_endpoint_namespace,
 };
 
 static ssize_t
@@ -308,10 +330,26 @@ static void iscsi_iface_release(struct device *dev)
 	put_device(parent);
 }
 
+static struct net *iscsi_iface_net(struct iscsi_iface *iface)
+{
+	struct Scsi_Host *shost = iscsi_iface_to_shost(iface);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static const void *iscsi_iface_namespace(const struct device *dev)
+{
+	struct iscsi_iface *iface = iscsi_dev_to_iface(dev);
+
+	return iscsi_iface_net(iface);
+}
 
 static struct class iscsi_iface_class = {
 	.name = "iscsi_iface",
 	.dev_release = iscsi_iface_release,
+	.ns_type = &net_ns_type_operations,
+	.namespace = iscsi_iface_namespace,
 };
 
 #define ISCSI_IFACE_ATTR(_prefix, _name, _mode, _show, _store)	\
@@ -1565,6 +1603,7 @@ static int iscsi_setup_host(struct transport_container *tc, struct device *dev,
 
 	memset(ihost, 0, sizeof(*ihost));
 	mutex_init(&ihost->mutex);
+	ihost->netns = &init_net;
 
 	iscsi_bsg_host_add(shost, ihost);
 	/* ignore any bsg add error - we just can't do sgio */
@@ -1582,23 +1621,78 @@ static int iscsi_remove_host(struct transport_container *tc,
 	return 0;
 }
 
-static DECLARE_TRANSPORT_CLASS(iscsi_host_class,
-			       "iscsi_host",
-			       iscsi_setup_host,
-			       iscsi_remove_host,
-			       NULL);
+#define DECLARE_TRANSPORT_CLASS_NS(cls, nm, su, rm, cfg, ns, nslookup)	\
+struct transport_class cls = {						\
+	.class = {							\
+		.name = nm,						\
+		.ns_type = ns,						\
+		.namespace = nslookup,					\
+	},								\
+	.setup = su,							\
+	.remove = rm,							\
+	.configure = cfg,						\
+}
+
+static const void *iscsi_host_namespace(const struct device *dev)
+{
+	struct Scsi_Host *shost = transport_class_to_shost(dev);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static DECLARE_TRANSPORT_CLASS_NS(iscsi_host_class,
+				  "iscsi_host",
+				  iscsi_setup_host,
+				  iscsi_remove_host,
+				  NULL,
+				  &net_ns_type_operations,
+				  iscsi_host_namespace);
 
-static DECLARE_TRANSPORT_CLASS(iscsi_session_class,
-			       "iscsi_session",
-			       NULL,
-			       NULL,
-			       NULL);
+static struct net *iscsi_sess_net(struct iscsi_cls_session *cls_session)
+{
+	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
+	struct iscsi_cls_host *ihost = shost->shost_data;
+
+	return iscsi_host_net(ihost);
+}
+
+static const void *iscsi_sess_namespace(const struct device *dev)
+{
+	struct iscsi_cls_session *cls_session = transport_class_to_session(dev);
+
+	return iscsi_sess_net(cls_session);
+}
+
+static DECLARE_TRANSPORT_CLASS_NS(iscsi_session_class,
+				  "iscsi_session",
+				  NULL,
+				  NULL,
+				  NULL,
+				  &net_ns_type_operations,
+				  iscsi_sess_namespace);
+
+static struct net *iscsi_conn_net(struct iscsi_cls_conn *cls_conn)
+{
+	struct iscsi_cls_session *cls_session = iscsi_conn_to_session(cls_conn);
+
+	return iscsi_sess_net(cls_session);
+}
+
+static const void *iscsi_conn_namespace(const struct device *dev)
+{
+	struct iscsi_cls_conn *cls_conn = transport_class_to_conn(dev);
+
+	return iscsi_conn_net(cls_conn);
+}
 
-static DECLARE_TRANSPORT_CLASS(iscsi_connection_class,
-			       "iscsi_connection",
-			       NULL,
-			       NULL,
-			       NULL);
+static DECLARE_TRANSPORT_CLASS_NS(iscsi_connection_class,
+				  "iscsi_connection",
+				  NULL,
+				  NULL,
+				  NULL,
+				  &net_ns_type_operations,
+				  iscsi_conn_namespace);
 
 struct iscsi_net {
 	struct sock *nls;
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 268ccaac1c05..af0c5a15f316 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -298,6 +298,7 @@ struct iscsi_cls_host {
 	struct request_queue *bsg_q;
 	uint32_t port_speed;
 	uint32_t port_state;
+	struct net *netns;
 };
 
 #define iscsi_job_to_shost(_job) \
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1ce0ef45c40b6873f2889bbcdc1a74d7fc04e370.1675876734.git.lduncan%40suse.com.
