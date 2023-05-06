Return-Path: <open-iscsi+bncBCYMVIPVXQMBB6WF3ORAMGQEHELOQBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C4F6F94FD
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:05 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id 2adb3069b0e04-4f139de8c55sf1369048e87.0
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415804; cv=pass;
        d=google.com; s=arc-20160816;
        b=X0tandAxbejplwqgTOj/FQm1pHYY5uMFapobE4515/7KzJIvUTOdEtEDGXiMhUxOxc
         YlX8MBpQygjkX9MxZeAp0PTCMSXWuY6gSjKD4nGjW59rTvHkDWA9wOHAW4HZunVxzENl
         e8RVDOi20dzG2lbA7EZoFknB3dtYgXdWqtzueMYZsfBMYYYK2AYgPpRxlJzVo7yEIuHB
         K9Jxzv+V9jLQ/wSjhrze+smNzXgU1IFdJhGnXIroYk75u7pBmkmuFxfheWjvAPYnq61Z
         2fSSS0bQ+/aNRBuVAvRk+o7Yp+wN/SofC1Ru+XV3mmg748g5lE8rvbUEsSjEiBJWwg8v
         TSng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=w3mmmnHmDt8iEBj7VMUbMXXI4jPTPX63aqLUJ0O4uwc=;
        b=WkDMsXO9u82Ju7IULOpPHOgrmlvUhfi/JmH33GCiuBPx4pSCUEf/NeuQBEtjfu6k1q
         Ri1h3ITRQVgY/zM9d64KQb1XwxpoOr0iUE2Tn0XkMjpkm+9vvyEGaAJUrJZRv4yGDnci
         gi01iC0S7SdKzu02rszaLgkA3qrt39yrOrBioX6eqLk5f7tZGy3bIbc1ICGmKbR9gH37
         4siwS2YsgUo5dDnrs0yxyp009FFQitMmRCpM1+c1JX46uhw104x8py3/EukZw/Vm8j6m
         BWHC91COmQc/Y9xCMwJ6pePBrMiCOH/4u3rmz69IDffwLCfW91y/k0u5qKHaB2n9W1sy
         FCRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SKeDXMrT;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415804; x=1686007804;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w3mmmnHmDt8iEBj7VMUbMXXI4jPTPX63aqLUJ0O4uwc=;
        b=l5fbS2JgI2iu4E6C+3YcvmGq17IiKOlzeucRncmrReieLGUIuNZI+VWR8JmgSDqviY
         ioziARsnpiC8HyDggk0GErWOjcC3Q3S3FLyfbYrRyjoI49pzfAKWZQ74lBS8UlPQWZou
         220xpNtjP/FtxlQl2tBBb4p+OjbjSCdHlWcWwaJnjLbxlQavaBcnCHDCvGwAysLfTfhi
         Uaw7YWSOzkddvja9Kny1q9wMKPr7KBq3GTorMlZ5XuXSme9025SR78HMQknE6OKJe65F
         ESemXiA+eZ+9gm+GJRKZQJBR1ij2fZUSUPYytDVNXZegPZEIR3HaSCGVGzHLvWF8rShc
         deUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415804; x=1686007804;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3mmmnHmDt8iEBj7VMUbMXXI4jPTPX63aqLUJ0O4uwc=;
        b=aGis6E9EDZkkhtHJriA/cMfzkLol3bBBjW0uIuJevnxeDilJy/qk5GqUPROzMfIUGL
         wglmqvL7ic/NS3Li6ccPDkMnoaOJEuU67J/s2VF8HBMnum5mkPCuN3u2xo970t1pp3P+
         rVngPGPaQiCZeL1Zcv1KDgzz6mHLQTPrlrp9ty650jdCHF2E9juftNsbzMCF38B2+/2m
         pyJEH9pha46duK7xZkczv/X4NPi2QFyk9X0/PhhJ1V1YEYcl6syVN5NYubj3UCptMSSi
         /PyB4QqGUrlx2hC0r2Sca5SVzl1fHmveQTU95y3QPMnVvz19LQ9kr44Fhhw9BJKA/95X
         2GBw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDxspdpU2a9dIAo+N+VP+lcr2w8Y5gnLAboL1IYyxatrN+EgAe4o
	q5a3ixifcNrDThQvVv28Qj0=
X-Google-Smtp-Source: ACHHUZ4ut8opCyNf9jTJY3ssKntyE4zkbzfcxkSbaA6SetBLaUxPgv1rNr51TuvknCi7SMe147b3sA==
X-Received: by 2002:a05:6512:21ae:b0:4f0:223e:716d with SMTP id c14-20020a05651221ae00b004f0223e716dmr1475318lft.4.1683415804472;
        Sat, 06 May 2023 16:30:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:39c2:b0:4ed:c108:7214 with SMTP id
 k2-20020a05651239c200b004edc1087214ls2923389lfu.3.-pod-prod-gmail; Sat, 06
 May 2023 16:30:01 -0700 (PDT)
X-Received: by 2002:ac2:599c:0:b0:4ef:d742:4dfe with SMTP id w28-20020ac2599c000000b004efd7424dfemr1335496lfn.65.1683415801211;
        Sat, 06 May 2023 16:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415801; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/lqc+Cp37TZbwbJTAHWA47x9TVBnFvbTr5NrByWAsAEGMbxU7UXQCPN91fpHKvGhn
         Lb5CRjrQOXovU6VfAARDXratTRdJF86UBvfhwSMui//RwTn90jnlmVxfQ+NWRRPQhvgi
         MFuGdDkbl6nEfLdeQn9lgPO2WdyJktjroG/RyvJOU5J/Vw9Rhp8FGpMQBsAt7xc5kFeb
         zLbEWKI+N4NYNEwye8aFy/AaCivU65HieeS+Uu+xsNeCKejVL4IUOT6IpdzdWyyXI7QV
         TCeAwLjEJ9mWnFRfw7f/nzgFCJUirI9WlOzcoFRLjgZsSBCMtJqMdIi+hIc27n4L/pOF
         6jdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=V+nHcWBThg87r9MWxGBVMEs5l/DzTXNHp2qWU+92EFI=;
        b=RI/zkz1hd5a83b9w8AxtBKqwfahwaVMpTogCw+ON62Y0y3jq10xiefhSfv8v9mAbtA
         sV0pG63ZSXFfc1uwkLbC9MXWG0pmFMeo8v36bd0Yy9xnM5JiA+U4Q+cYBsfvbvTYTtWW
         tGIDbi1THwxkm9ZFm1XftMmQrTQJz4UBMO/cFBY5UHtTP69LtNUYAQti7739kkP6ncHL
         a2wbi8uIZ4IUKWdtxnsW9zyfQDRmL2eccL9E+aPQxMxs720U/95oSBxqTz4kCsZR17wT
         d7Ochn6Nmn/y88HpcA8Mi6WWvt0VkS6smt83pJNyPh5b1PSvmT3C/CfnqSoXNWBYiBlc
         oQnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SKeDXMrT;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id br4-20020a056512400400b004dc4bb412f7si374895lfb.12.2023.05.06.16.30.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-636-kFcNSu0DPOi7v81CHisY-A-1; Sat, 06 May 2023 19:29:58 -0400
X-MC-Unique: kFcNSu0DPOi7v81CHisY-A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CDDE101A55C;
	Sat,  6 May 2023 23:29:58 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B8A7535443;
	Sat,  6 May 2023 23:29:57 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 07/11] iscsi: convert flashnode devices from bus to class
Date: Sat,  6 May 2023 16:29:26 -0700
Message-Id: <20230506232930.195451-8-cleech@redhat.com>
In-Reply-To: <20230506232930.195451-1-cleech@redhat.com>
References: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=SKeDXMrT;
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

The flashnode session and connection devices should be filtered by net
namespace along with the iscsi_host, but we can't do that with a bus
device.  As these don't use any of the bus matching functionality, they
make more sense as a class device anyway.

Signed-off-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/qla4xxx/ql4_os.c       |  2 +-
 drivers/scsi/scsi_transport_iscsi.c | 36 ++++++++++++-----------------
 include/scsi/scsi_transport_iscsi.h |  2 ++
 3 files changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index 55fe6aca93d0..bc06020565e4 100644
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -7185,7 +7185,7 @@ static int qla4xxx_sysfs_ddb_is_non_persistent(struct device *dev, void *data)
 {
 	struct iscsi_bus_flash_session *fnode_sess;
 
-	if (!iscsi_flashnode_bus_match(dev, NULL))
+	if (!iscsi_is_flashnode_session_dev(dev))
 		return 0;
 
 	fnode_sess = iscsi_dev_to_flash_session(dev);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index d8b05f3361c8..2fae14aa291e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1081,6 +1081,12 @@ static const struct device_type iscsi_flashnode_sess_dev_type = {
 	.release = iscsi_flashnode_sess_release,
 };
 
+bool iscsi_is_flashnode_session_dev(struct device *dev)
+{
+	return dev->type == &iscsi_flashnode_sess_dev_type;
+}
+EXPORT_SYMBOL_GPL(iscsi_is_flashnode_session_dev);
+
 /* flash node connection attrs show */
 #define iscsi_flashnode_conn_attr_show(type, name, param)		\
 static ssize_t								\
@@ -1267,20 +1273,8 @@ static const struct device_type iscsi_flashnode_conn_dev_type = {
 	.release = iscsi_flashnode_conn_release,
 };
 
-static struct bus_type iscsi_flashnode_bus;
-
-int iscsi_flashnode_bus_match(struct device *dev,
-				     struct device_driver *drv)
-{
-	if (dev->bus == &iscsi_flashnode_bus)
-		return 1;
-	return 0;
-}
-EXPORT_SYMBOL_GPL(iscsi_flashnode_bus_match);
-
-static struct bus_type iscsi_flashnode_bus = {
+static struct class iscsi_flashnode_bus = {
 	.name = "iscsi_flashnode",
-	.match = &iscsi_flashnode_bus_match,
 };
 
 /**
@@ -1311,7 +1305,7 @@ iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 	fnode_sess->transport = transport;
 	fnode_sess->target_id = index;
 	fnode_sess->dev.type = &iscsi_flashnode_sess_dev_type;
-	fnode_sess->dev.bus = &iscsi_flashnode_bus;
+	fnode_sess->dev.class = &iscsi_flashnode_bus;
 	fnode_sess->dev.parent = &shost->shost_gendev;
 	dev_set_name(&fnode_sess->dev, "flashnode_sess-%u:%u",
 		     shost->host_no, index);
@@ -1359,7 +1353,7 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 
 	fnode_conn->transport = transport;
 	fnode_conn->dev.type = &iscsi_flashnode_conn_dev_type;
-	fnode_conn->dev.bus = &iscsi_flashnode_bus;
+	fnode_conn->dev.class = &iscsi_flashnode_bus;
 	fnode_conn->dev.parent = &fnode_sess->dev;
 	dev_set_name(&fnode_conn->dev, "flashnode_conn-%u:%u:0",
 		     shost->host_no, fnode_sess->target_id);
@@ -1392,7 +1386,7 @@ EXPORT_SYMBOL_GPL(iscsi_create_flashnode_conn);
  */
 static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
 {
-	return dev->bus == &iscsi_flashnode_bus;
+	return dev->type == &iscsi_flashnode_conn_dev_type;
 }
 
 static int iscsi_destroy_flashnode_conn(struct iscsi_bus_flash_conn *fnode_conn)
@@ -1406,7 +1400,7 @@ static int flashnode_match_index(struct device *dev, void *data)
 	struct iscsi_bus_flash_session *fnode_sess = NULL;
 	int ret = 0;
 
-	if (!iscsi_flashnode_bus_match(dev, NULL))
+	if (dev->type != &iscsi_flashnode_sess_dev_type)
 		goto exit_match_index;
 
 	fnode_sess = iscsi_dev_to_flash_session(dev);
@@ -1512,7 +1506,7 @@ EXPORT_SYMBOL_GPL(iscsi_destroy_flashnode_sess);
 
 static int iscsi_iter_destroy_flashnode_fn(struct device *dev, void *data)
 {
-	if (!iscsi_flashnode_bus_match(dev, NULL))
+	if (dev->type != &iscsi_flashnode_sess_dev_type)
 		return 0;
 
 	iscsi_destroy_flashnode_sess(iscsi_dev_to_flash_session(dev));
@@ -5235,7 +5229,7 @@ static __init int iscsi_transport_init(void)
 	if (err)
 		goto unregister_conn_class;
 
-	err = bus_register(&iscsi_flashnode_bus);
+	err = class_register(&iscsi_flashnode_bus);
 	if (err)
 		goto unregister_session_class;
 
@@ -5258,7 +5252,7 @@ static __init int iscsi_transport_init(void)
 unregister_pernet_subsys:
 	unregister_pernet_subsys(&iscsi_net_ops);
 unregister_flashnode_bus:
-	bus_unregister(&iscsi_flashnode_bus);
+	class_unregister(&iscsi_flashnode_bus);
 unregister_session_class:
 	transport_class_unregister(&iscsi_session_class);
 unregister_conn_class:
@@ -5278,7 +5272,7 @@ static void __exit iscsi_transport_exit(void)
 {
 	destroy_workqueue(iscsi_conn_cleanup_workq);
 	unregister_pernet_subsys(&iscsi_net_ops);
-	bus_unregister(&iscsi_flashnode_bus);
+	class_unregister(&iscsi_flashnode_bus);
 	transport_class_unregister(&iscsi_connection_class);
 	transport_class_unregister(&iscsi_session_class);
 	transport_class_unregister(&iscsi_host_class);
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 83bcdd2bcde4..f9d003753f11 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -524,6 +524,8 @@ iscsi_find_flashnode_sess(struct Scsi_Host *shost, void *data,
 extern struct device *
 iscsi_find_flashnode_conn(struct iscsi_bus_flash_session *fnode_sess);
 
+extern bool iscsi_is_flashnode_session_dev(struct device *dev);
+
 extern char *
 iscsi_get_ipaddress_state_name(enum iscsi_ipaddress_state port_state);
 extern char *iscsi_get_router_state_name(enum iscsi_router_state router_state);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-8-cleech%40redhat.com.
