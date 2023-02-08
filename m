Return-Path: <open-iscsi+bncBC755V5RXMKBBLV5R6PQMGQEJL65PKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7802668F5C7
	for <lists+open-iscsi@lfdr.de>; Wed,  8 Feb 2023 18:41:04 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id d14-20020a05600c34ce00b003dd07ce79c8sf1388625wmq.1
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Feb 2023 09:41:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675878064; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHffU9sLqNTBGJzrGdJeL9mZz7s5JgLmR0xeYrgZKepEb7ou9nJASp1l0h8BHIV8Bf
         rGq+5MLIqH3H6Xx1eu1qbTNDDiljg7X9/E/VCurwVr5rqNZPE9rcQhVFc98HUI9JPo/P
         ttUIaCC9YdgIz1gttePh4pEOoTqBHM534QrFMVVmYagcnxG7JTVMF3vd+mlQU+2BwaHj
         Y9O1RcdsnMohLp2DbzWKZGcJ9e0g4Q0fzIEd1s/1SmzAs30lm8v7i5Fyro26kMZQjGUR
         igvvNlWAtLBPHY5V0HvfIhyStilqN5P/2gIMgxOiCGBR+84b3x1aJzspyRM6l9LALKh7
         IgKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=52XS2xBmdzdQ/xrLxGXuryxtmEJqal13R2W4WUOEMi4=;
        b=vZmfJMACDkwbwssnmp+OS5qpGsA/mnJ5rbDg/YCBHUm3SJ3vQN8t+e19IwtQ39e9kW
         DyWWW5SmQ8ReAgYmbq5JyRQ/IXXtq/c3zo3pFGDNs/jsOjmDiU271ta2Zj7whNuWW921
         7uehm3hFDbd0VIGcS/OLFv0FmsiogSQWYQGKfFm2W79NFpUf1IUvTrmj6pi7InfiJxLI
         8msr+FNkHeekw0clgK2BHNbqLSfwHp9V/jzwLN/T0I2v7DNGQdf+FhNoCunzmeLiiY5B
         yTedbwPVqkv4P+E3oQrytfFfV+Ao5SbjgrC9zMMy9EfIjyHIrwReoMSKNr4swDCWT70B
         /1KQ==
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
        bh=52XS2xBmdzdQ/xrLxGXuryxtmEJqal13R2W4WUOEMi4=;
        b=GTaO8TVzy2cBZeJ5kJ+V7f8Un+T+WJZUtdQpW5d8g3NkTWnH2hg3k3o90EmMZArzSt
         hq7+h3lBxwjqY5u8AOf3HwtvZYjqqLF3Lm25961V+iQMOjgAqAVC6Sl+2MlQqNvUFwPd
         VWO+6fdtLGd9M3NoDD3AyUby092vzHS4feGMGqZqb4oqH+kA+fZI0/h8H6arTum2fmD+
         30ZOlI5d8k4BL+v7uz0/EpWH5SwXA+Tfgdv1nbHTFxJGpl0vwCjsOJPDO60+U3GAR3zf
         7kyyCroDqW2bHEiA4lDv3MF3ZtxAQErUymFZ9J0FY21fxd35jHxC14BVSjrIec8V6NcP
         JC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=52XS2xBmdzdQ/xrLxGXuryxtmEJqal13R2W4WUOEMi4=;
        b=yCfhQoACPoZd3WOTsy7PaxkpSWlT74i2yFzaM9SSlt08qca0Eaw34Vqj1Ihpne8t6O
         OMvCdiXgx8XWBjNqs1oVLibCT8UhpvFR/4wDf87Ds/+myKDx4GMRfYHPFnlej3HHovnS
         zKEKBCGL6Pjkffi9Lk3kcJFSjsYYOlCtG1eGCBffOf8y//f5HJG59zCcIOZsd9HZsVCB
         pQMFZBZzu+wbPT/Vt6KtEZDAOUWgotghsIkrjmbI5KiBg4ph40PYKX8pkEOr8g7hFgWo
         5oe4JxMGXbzjSaB/sYQ+iUtIeFia2/CLnjtutLRxNttW6Ec6Fb3pkRsuUMojFPJo9ad/
         uU9A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKV1fE/7t0mrfOSZcqGZ89E5cll/YwluwpYSI/VxHPIsyoDreTtU
	gCvMGFqDQZDCSNbrC4mDpTU=
X-Google-Smtp-Source: AK7set8sQqwgWY89kqjvkTFEo+bJ6LNCh0O/x/hc18KcmciW9KKv52GM+rfGxMmrAOHGFxu10jssdA==
X-Received: by 2002:a05:600c:1d1f:b0:3dc:53da:3274 with SMTP id l31-20020a05600c1d1f00b003dc53da3274mr286395wms.162.1675878064102;
        Wed, 08 Feb 2023 09:41:04 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:3d92:b0:3d9:bb72:6814 with SMTP id
 bi18-20020a05600c3d9200b003d9bb726814ls1440183wmb.3.-pod-control-gmail; Wed,
 08 Feb 2023 09:41:01 -0800 (PST)
X-Received: by 2002:a1c:f016:0:b0:3df:e468:17dc with SMTP id a22-20020a1cf016000000b003dfe46817dcmr7378257wmb.40.1675878061604;
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675878061; cv=none;
        d=google.com; s=arc-20160816;
        b=PMAi1yDoo0WWeccVf2f9ChmmrIRkGFi6ilJ89jXH1JsPefnnAxAONJT7uPl0u2QGkK
         jS2LECFLrbuWg5cI5UUpn/M0FnbBuMH5aq2sqm49GoiHwOEm/Gy6LCWH2WT9JKnXxp0N
         oXTkbqqyaegDI49HZ2llNV0IISuDJoGzcIgwMpipRu3pMJXsO1TB5BRYfOdNuv/4IcyZ
         rmIsCz/+A60xH3rdDhNtJV34QWXPy+fP3l18ORd6UxMFpAF6TK8jLpp5d1XvmLQlgcna
         1gxzobKo2vcQugJhhamYyEli+ayqATEWlUBAArzRsZKIEnUboKQgQGpFWzfZ9gBxAwFk
         kY3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=MnG6O8IzwiSWUj0HLy0BgzsrmxQO+tKugLYZLgo4f1I=;
        b=Pm6dsLbKF2HvZr+94bvQn8dbI5shkunoqwkOnXII2K2KQywD+k1A5aAimiuOsjfc/G
         uPKCxzGxr+SQUPGueaAznslY05fi+iM2y92ao7+Am9VibvGYTlmU6AZCiUSbJrgwrgpg
         TeEQSerc6aJ2iQFuBHQvs57n5oHFw12qmamXzEsw3mARputi6jjHTy7ZW1UVjEuE25qP
         UBn/b1QNEHYE9iVPYnmjLEvVFc+37/WVzk9B0SVWzapNtYwzYDTVDnoxnLMOetZ7aSQb
         xS8TV8I+Kn/RrM6Q6pCMIjTSp7+3S7QJegwAvpUINpBWJ2XyjxwT0zdKjBqzvpdKUuaf
         tgSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [2001:67c:2178:6::1d])
        by gmr-mx.google.com with ESMTPS id bg31-20020a05600c3c9f00b003d9c73c820asi329928wmb.3.2023.02.08.09.41.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 2001:67c:2178:6::1d as permitted sender) client-ip=2001:67c:2178:6::1d;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 65D811FF10;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: from localhost (unknown [10.163.24.10])
	by relay2.suse.de (Postfix) with ESMTP id 29C222C141;
	Wed,  8 Feb 2023 17:41:01 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 4DD64CA192; Wed,  8 Feb 2023 09:40:57 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>
Subject: [RFC PATCH 7/9] iscsi: convert flashnode devices from bus to class
Date: Wed,  8 Feb 2023 09:40:55 -0800
Message-Id: <e4f5405384b984cff51acfc6d36f49f0dd924a3e.1675876735.git.lduncan@suse.com>
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

The flashnode session and connection devices should be filtered by net
namespace along with the iscsi_host, but we can't do that with a bus
device.  As these don't use any of the bus matching functionality, they
make more sense as a class device anyway.

Signed-off-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/qla4xxx/ql4_os.c       |  2 +-
 drivers/scsi/scsi_transport_iscsi.c | 36 ++++++++++++-----------------
 include/scsi/scsi_transport_iscsi.h |  2 ++
 3 files changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index 390b89bdec8f..18e382b6be18 100644
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
index 008adde4dc51..c065763b1fc6 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1060,6 +1060,12 @@ static const struct device_type iscsi_flashnode_sess_dev_type = {
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
@@ -1246,20 +1252,8 @@ static const struct device_type iscsi_flashnode_conn_dev_type = {
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
@@ -1290,7 +1284,7 @@ iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 	fnode_sess->transport = transport;
 	fnode_sess->target_id = index;
 	fnode_sess->dev.type = &iscsi_flashnode_sess_dev_type;
-	fnode_sess->dev.bus = &iscsi_flashnode_bus;
+	fnode_sess->dev.class = &iscsi_flashnode_bus;
 	fnode_sess->dev.parent = &shost->shost_gendev;
 	dev_set_name(&fnode_sess->dev, "flashnode_sess-%u:%u",
 		     shost->host_no, index);
@@ -1338,7 +1332,7 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 
 	fnode_conn->transport = transport;
 	fnode_conn->dev.type = &iscsi_flashnode_conn_dev_type;
-	fnode_conn->dev.bus = &iscsi_flashnode_bus;
+	fnode_conn->dev.class = &iscsi_flashnode_bus;
 	fnode_conn->dev.parent = &fnode_sess->dev;
 	dev_set_name(&fnode_conn->dev, "flashnode_conn-%u:%u:0",
 		     shost->host_no, fnode_sess->target_id);
@@ -1371,7 +1365,7 @@ EXPORT_SYMBOL_GPL(iscsi_create_flashnode_conn);
  */
 static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
 {
-	return dev->bus == &iscsi_flashnode_bus;
+	return dev->type == &iscsi_flashnode_conn_dev_type;
 }
 
 static int iscsi_destroy_flashnode_conn(struct iscsi_bus_flash_conn *fnode_conn)
@@ -1385,7 +1379,7 @@ static int flashnode_match_index(struct device *dev, void *data)
 	struct iscsi_bus_flash_session *fnode_sess = NULL;
 	int ret = 0;
 
-	if (!iscsi_flashnode_bus_match(dev, NULL))
+	if (dev->type != &iscsi_flashnode_sess_dev_type)
 		goto exit_match_index;
 
 	fnode_sess = iscsi_dev_to_flash_session(dev);
@@ -1491,7 +1485,7 @@ EXPORT_SYMBOL_GPL(iscsi_destroy_flashnode_sess);
 
 static int iscsi_iter_destroy_flashnode_fn(struct device *dev, void *data)
 {
-	if (!iscsi_flashnode_bus_match(dev, NULL))
+	if (dev->type != &iscsi_flashnode_sess_dev_type)
 		return 0;
 
 	iscsi_destroy_flashnode_sess(iscsi_dev_to_flash_session(dev));
@@ -5200,7 +5194,7 @@ static __init int iscsi_transport_init(void)
 	if (err)
 		goto unregister_conn_class;
 
-	err = bus_register(&iscsi_flashnode_bus);
+	err = class_register(&iscsi_flashnode_bus);
 	if (err)
 		goto unregister_session_class;
 
@@ -5223,7 +5217,7 @@ static __init int iscsi_transport_init(void)
 unregister_pernet_subsys:
 	unregister_pernet_subsys(&iscsi_net_ops);
 unregister_flashnode_bus:
-	bus_unregister(&iscsi_flashnode_bus);
+	class_unregister(&iscsi_flashnode_bus);
 unregister_session_class:
 	transport_class_unregister(&iscsi_session_class);
 unregister_conn_class:
@@ -5243,7 +5237,7 @@ static void __exit iscsi_transport_exit(void)
 {
 	destroy_workqueue(iscsi_conn_cleanup_workq);
 	unregister_pernet_subsys(&iscsi_net_ops);
-	bus_unregister(&iscsi_flashnode_bus);
+	class_unregister(&iscsi_flashnode_bus);
 	transport_class_unregister(&iscsi_connection_class);
 	transport_class_unregister(&iscsi_session_class);
 	transport_class_unregister(&iscsi_host_class);
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 9ac1bc133693..580f06d1479b 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -512,6 +512,8 @@ iscsi_find_flashnode_sess(struct Scsi_Host *shost, void *data,
 extern struct device *
 iscsi_find_flashnode_conn(struct iscsi_bus_flash_session *fnode_sess);
 
+extern bool iscsi_is_flashnode_session_dev(struct device *dev);
+
 extern char *
 iscsi_get_ipaddress_state_name(enum iscsi_ipaddress_state port_state);
 extern char *iscsi_get_router_state_name(enum iscsi_router_state router_state);
-- 
2.39.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e4f5405384b984cff51acfc6d36f49f0dd924a3e.1675876735.git.lduncan%40suse.com.
