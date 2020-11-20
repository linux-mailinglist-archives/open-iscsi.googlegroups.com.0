Return-Path: <open-iscsi+bncBDTIXQ73QIKRBK6B3X6QKGQEOCK7SFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 313EE2BA23A
	for <lists+open-iscsi@lfdr.de>; Fri, 20 Nov 2020 07:22:36 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id g3sf1840797vso.1
        for <lists+open-iscsi@lfdr.de>; Thu, 19 Nov 2020 22:22:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605853355; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZzthPpns1Rs0SywsrkYb140TL/de4A1BaZypdjo5kk6a8iLgFvYz/bcuUgVf2s8KLt
         ovj4FRg3aidFP7sDUnrTac9dcfi9OdVpx3NjA4Xdv/Ekh+av9krYbnOh1R+2O3Fm+r2G
         E9BDUegQ+trlm6oVD0tCQHQZku8odZrRqJgBgAVB+3W/UlQze/FnG/cywsEysp2S8bXV
         jOFL9Z1ADmHc6ZqzKgRo1Zrby4kStpPG0O1a8uHzxsuQ4xVE0+XVsiGQ38B8Z144op8/
         nm/BH/xvrfoWm7wSrHet8PJbWiQTNGFzsSRgVL2+JiGtVCTFgGM5MVkrZ+wFe4tJq01j
         QB6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=WLyeumhHbkG5FJc/y+edWd5Fz7eqPnKXfq78bWbAFo8=;
        b=d+vDRgQQs98VoYHyvEbqMJT2FErili1NVQdhrk9p44Rp+IjWghsQBCFYwrBR5ch9g0
         A7PI3nSlMC670VW5i9HPN+VRwiDvUXK89S9pkXbkO27xbq6DwiaHX7uDPuPNleqvFO2K
         5UtAMbyQdwcc5NfUsgi5KB1dVpngdSa4tcGLZkNXSMhz69B8KMCALAbyre29+JZgJ22i
         Y7YQaZeC2XcMuevVgKPqvB1+VwaEhvV3aJr2G0a8Kd7AtYwqjx9/XK6pcW/Du83GH9Hx
         rOXTeHbC9VdroGSdK5DXXvTqY/qpiVoOYStWg5RFX4tw/ywIcQBXHJMde5H/qmyBUx8m
         HAMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLyeumhHbkG5FJc/y+edWd5Fz7eqPnKXfq78bWbAFo8=;
        b=RTE7o/iZPKktUC6Uh9r/FFuujuSklMWXIsQC7maeLE708uhteI6QfgaN2EK8jjNVM1
         3KqNn5ZecTMKUFSKwHtoc7KaHGbmv7EE98OgZFohz3nUWW4aHgchpcSlkBEcuenwopxS
         jDvf6EwfRwlswsYAO5hM5naZfM0f9s00iMPK5Hcnu09i4+phqCi6wlAH8iX6K1Y+Vsvh
         R9i0CWiO6DC5emhN3oHJelRYAfvSh7x+48i+S9UsYHTkiWGHIgfNqjmidTd1A9gZqFi4
         cVSWFxK6LdnZA2WbhAowk1g6HL8prwIMkFhWuH/G9P1v3LlSCVQvqFiEzbfC2/BSbedb
         0CQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WLyeumhHbkG5FJc/y+edWd5Fz7eqPnKXfq78bWbAFo8=;
        b=UZ1Gd6QyUzUxB+WUJKwDpYFV1s/zA2/k1Ct5VgKZC2u6kgMNwrsnBYuJ7ktP6hbx/3
         BqzQv87f0x7Gx+CyMiESDK5/AkhRkKshSfBHVPo49F70dtJsTHPKvegCJrGRf9ATVOre
         Bn6Jb5nnL01W+Iz32w4578qJGT1q3LQpTEgmXESi123T1B9p3eWbIT6w9PjaW3P+WcHo
         YIrPR6pNN+s+MhkSV1imuGxTD5So4VBJOR3o3k7ezXKwIAC4jBTzn6qU8/le0MQ2y3qg
         dOzQWI8IpCSWONm+AewUTpPjL0Hd0lhsA9WKs01/MvjdOrdgmyh8jiZ9nUiDu8k5O1et
         n0Yw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531w8W4/Lacut5ch1TmVfZIHM71ramG+2RswJ1Q99bt6au3aBYNh
	cfvRy8OJthuTi7REhtUkWpE=
X-Google-Smtp-Source: ABdhPJz+2X7UJ8EFWFlSwp7LkFIr2BPSjubGkQKLbrm2fVPrtG6gbn1C2qQWfSrJR3KP4JUiss5bSA==
X-Received: by 2002:a1f:3105:: with SMTP id x5mr11668671vkx.1.1605853355146;
        Thu, 19 Nov 2020 22:22:35 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9f:3fc6:: with SMTP id m6ls494422uaj.11.gmail; Thu, 19 Nov
 2020 22:22:34 -0800 (PST)
X-Received: by 2002:a9f:2583:: with SMTP id 3mr9817050uaf.134.1605853354695;
        Thu, 19 Nov 2020 22:22:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605853354; cv=none;
        d=google.com; s=arc-20160816;
        b=AGmZqB8nwx/C73maOZqynPskrhlHYx/UcG6nqWNZ4mIBE6NRXE8JDo3h5+E1h83pft
         /pz0D9co0pxl58/072Pn+JNqyMUG2igK0UH0GuTCOcxvU0Fg2CezUB9lzOGaI60gvx+E
         kCAohqnB/abIvMdTYwz3IU87FF3AdkADqLZX2sAijV9KLyzbOMBdIHSIc7CgI7Iq+Axf
         y9+Bj5Me9ilspX/w+/T5WNMXoqZgL/h2+MQaZNBZlisFo5K3OpIc0fK/cgV7mKMldkqN
         vSxJG1lOqRK5xKJr7V+bqD02DwUOq12GszanaYBTxYUgl1UzrImAl7HMP8wEosUDad+V
         hdhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=T5U3uhDv3Vr13BJ6qducG0MQOgyFt6YmaWqYIJNWWPg=;
        b=PUlwASUjSfkyYS/OzqCBtgjs/BSYiWm1wowN9HmIPVSacbs6xpOmrZB8tdDGUVhDIE
         +zzmOitITRhtldnSy/j517fA3b4r6OpUV16R1lfgxmM7zqbkeQNnJW1XlegKhijH+mOl
         DvchcKBEh8vvpa/x1nYbYq3PlQi66WprcYgpoeHgMvOe7kp3MqAzgQ6Xff3EDikdYX+d
         hW04eTpz7fe+eQ7Ry58v7zYlvaKMotGxje9/6RSNYqcGz4XUmyJYh3wy3IvJXROZYxau
         YiWld6rBFYq65jEj42p2DVS6K4qkGTGkwL5MyvrTq9KMEuOYnhLc918iNPvWy/u6u1EO
         XGYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id n1si118608vsr.2.2020.11.19.22.22.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 22:22:34 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4Ccmfm5HRdzLpP1;
	Fri, 20 Nov 2020 14:22:08 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Fri, 20 Nov 2020
 14:22:24 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Wu Bo <wubo40@huawei.com>, Wenchao Hao
	<haowenchao@huawei.com>
Subject: [PATCH] iscsiadm: Verify mode parameters when recognize mode
Date: Fri, 20 Nov 2020 14:20:54 +0800
Message-ID: <20201120062052.51838-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com
Reply-To: open-iscsi@googlegroups.com
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

Parameters verify should be performed as soon as possible
to avoid unuseless work.

Signed-off-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 usr/iscsiadm.c | 85 ++++++++++++++++++++------------------------------
 1 file changed, 34 insertions(+), 51 deletions(-)

diff --git a/usr/iscsiadm.c b/usr/iscsiadm.c
index 311978e..afc06a2 100644
--- a/usr/iscsiadm.c
+++ b/usr/iscsiadm.c
@@ -101,6 +101,22 @@ enum _print_node_tree_mode {
 	_PRINT_MODE_NODE,
 };
 
+struct verify_mode_t {
+	char *mode;
+	char *allowed;
+	int skip_m;
+};
+
+static struct verify_mode_t mode_paras[] = {
+	[MODE_DISCOVERY] = {"discovery", "DSIPdmntplov", 0},
+	[MODE_DISCOVERYDB] = {"discovery", "DSIPdmntplov", 0},
+	[MODE_NODE] = {"node", "RsPIdmlSonvupTULW", 0},
+	[MODE_SESSION] = {"session", "PiRdrmusonuSv", 1},
+	[MODE_HOST] = {"host", "CHdmPotnvxA", 0},
+	[MODE_IFACE] = {"iface", "HIdnvmPoCabci", 0},
+	[MODE_FW] = {"fw", "dml", 0},
+};
+
 static struct option const long_options[] =
 {
 	{"mode", required_argument, NULL, 'm'},
@@ -1331,10 +1347,19 @@ sw_discovery:
 
 
 static int
-verify_mode_params(int argc, char **argv, char *allowed, int skip_m)
+verify_mode_params(int argc, char **argv, enum iscsiadm_mode mode)
 {
 	int ch, longindex;
 	int ret = 0;
+	char *allowed;
+	int skip_m;
+	int tmp = optind;
+
+	if (mode > MODE_FW)
+		return 0;
+
+	allowed = mode_paras[mode].allowed;
+	skip_m = mode_paras[mode].skip_m;
 
 	optind = 0;
 
@@ -1343,10 +1368,13 @@ verify_mode_params(int argc, char **argv, char *allowed, int skip_m)
 		if (!strchr(allowed, ch)) {
 			if (ch == 'm' && skip_m)
 				continue;
-			ret = ch;
+			log_error("%s mode: option '-%c' is not "
+				  "allowed/supported",
+				  mode_paras[mode].mode, ch);
 			break;
 		}
 	}
+	optind = tmp;
 
 	return ret;
 }
@@ -3677,6 +3705,10 @@ main(int argc, char **argv)
 			break;
 		case 'm':
 			mode = str_to_mode(optarg);
+			if (verify_mode_params(argc, argv, mode)) {
+				rc = ISCSI_ERR_INVAL;
+				goto free_ifaces;
+			}
 			break;
 		case 'C':
 			sub_mode = str_to_submode(optarg);
@@ -3767,13 +3799,6 @@ main(int argc, char **argv)
 		usage(ISCSI_ERR_INVAL);
 
 	if (mode == MODE_FW) {
-		if ((rc = verify_mode_params(argc, argv, "dml", 0))) {
-			log_error("fw mode: option '-%c' is not "
-				  "allowed/supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto free_ifaces;
-		}
-
 		rc = exec_fw_op(NULL, NULL, info_level, do_login, op);
 		goto free_ifaces;
 	}
@@ -3787,12 +3812,6 @@ main(int argc, char **argv)
 
 	switch (mode) {
 	case MODE_HOST:
-		if ((rc = verify_mode_params(argc, argv, "CHdmPotnvxA", 0))) {
-			log_error("host mode: option '-%c' is not "
-				  "allowed/supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto out;
-		}
 		if (sub_mode != -1) {
 			switch (sub_mode) {
 			case MODE_CHAP:
@@ -3858,13 +3877,6 @@ main(int argc, char **argv)
 	case MODE_IFACE:
 		iscsi_default_iface_setup(ctx);
 
-		if ((rc = verify_mode_params(argc, argv, "HIdnvmPoCabci", 0))) {
-			log_error("iface mode: option '-%c' is not "
-				  "allowed/supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto out;
-		}
-
 		if (!list_empty(&ifaces)) {
 			iface = list_entry(ifaces.next, struct iface_rec,
 					   list);
@@ -3883,38 +3895,16 @@ main(int argc, char **argv)
 
 		break;
 	case MODE_DISCOVERYDB:
-		if ((rc = verify_mode_params(argc, argv, "DSIPdmntplov", 0))) {
-			log_error("discovery mode: option '-%c' is not "
-				  "allowed/supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto out;
-		}
-
 		rc = exec_disc2_op(type, ip, port, &ifaces, info_level,
 				   do_login, do_discover, op, &params,
 				   do_show);
 		break;
 	case MODE_DISCOVERY:
-		if ((rc = verify_mode_params(argc, argv, "DSIPdmntplov", 0))) {
-			log_error("discovery mode: option '-%c' is not "
-				  "allowed/supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto out;
-		}
-
 		rc = exec_disc_op(type, ip, port, &ifaces, info_level,
 				  do_login, do_discover, op, &params,
 				  do_show);
 		break;
 	case MODE_NODE:
-		if ((rc = verify_mode_params(argc, argv, "RsPIdmlSonvupTULW",
-					     0))) {
-			log_error("node mode: option '-%c' is not "
-				  "allowed/supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto out;
-		}
-
 		if (do_login_all) {
 			rc = login_by_startup(group_session_mgmt_mode, wait);
 			goto out;
@@ -3950,13 +3940,6 @@ main(int argc, char **argv)
 				  &params);
 		break;
 	case MODE_SESSION:
-		if ((rc = verify_mode_params(argc, argv,
-					      "PiRdrmusonuSv", 1))) {
-			log_error("session mode: option '-%c' is not "
-				  "allowed or supported", rc);
-			rc = ISCSI_ERR_INVAL;
-			goto out;
-		}
 		if (sid >= 0) {
 			char session[64];
 			struct session_info *info;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201120062052.51838-1-haowenchao%40huawei.com.
