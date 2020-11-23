Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBK5U5X6QKGQEFTBOWDQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1CF2C002B
	for <lists+open-iscsi@lfdr.de>; Mon, 23 Nov 2020 07:43:56 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id q90sf731855uaq.12
        for <lists+open-iscsi@lfdr.de>; Sun, 22 Nov 2020 22:43:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606113835; cv=pass;
        d=google.com; s=arc-20160816;
        b=JqWE5Si3VNUESLcKBP5H1ZexDXxoML4dRIiiwlfjx9oiBbP4nQc2UZrJctuCuGt/PV
         l+M9UihYQ2MqThRX2yqlN5CXqW0/88cQdNEw1TuiRyM8Me7Hs5aWe00HsE/SDAaHFA2A
         g8NUnN1W2HXoWymxdzdWlKpwk8hh1upRimjFRd4Hn9UzGOqpt+Q6SV1TUIp6TqAYWGFp
         ppFOECPa8gWOyd94656/LyC/fnjL+bCRSe+z8rgBbtWxtxhzoItuG3uRxqoH7Nn6jLii
         XXvo9PUUy21nPRU9UNoY5gERPQWHdlYCGWB6X5hhI9njR4/PWpQZB8G69qPLNI8qnrXe
         eLPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=yrKTN8PJg2BCz8rWhZuc77DOrJU3dvdeoKYXWAwfTDM=;
        b=pNxCNpAk1ytCL15lEfyuMDkXaZ6gN+oAOCQ0/X8UFLRulgJxueWW6tdXVo7utvOvjo
         cTYOLzkJV87VIv0G7wNjq9BcjqBHNh/YawcvpkIzl+Fl0MXsmmC//8B0QD8Y4n8shAKS
         wjzxTJ0jcRh90COiBACrQnFcI5Z78confNnqw+wwgisVSID6NvLdRaYuffTujgAOcULe
         JbGDP0YM5UIpxtPkonJyyZJ0ptI05XalA9RdHYJW0yFpi/76I029xpYgXZr22l/cwJty
         Lwgx3bt/TGF7MX54LzVkQzipRaaZyoFNfW9Y2Mu7E4W9iM1PEpGnyvUD0LL9LwMBHuiL
         Dszg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yrKTN8PJg2BCz8rWhZuc77DOrJU3dvdeoKYXWAwfTDM=;
        b=MdvhoGDGEyB1UNRtPxm6BdgrG78ICW4qAPr14BNH5jNtmksTn6wYOdpA0GYo0G5VBz
         5s9nytAVLgVV9GbKxc8oZLKBpJ49nQINJ9k1FD1dXwdUbY0nvIoMmCc7kxiBtbgKFAlW
         iZ5WkPa05Mm/4QJ79CO+SKCbtZ09VY5zkeiTqVGBjEZWq0pP6c03C9LU1M99gcgN8gW7
         X8YiXrrfRmqBBnJW68oGFbr1O54JgOrwTtBfgbv2Lw9j8RDtQt5fucXVM3UmgfElZCto
         TMDbRrNNxOUlONaDxmQn6/TaGOZz3KqepttjOoOAYRrEdQ1M80MdmfDEPAiyRiccJxUj
         FHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yrKTN8PJg2BCz8rWhZuc77DOrJU3dvdeoKYXWAwfTDM=;
        b=XEfcTvfLhGJnm+xJEDMOho039afLoZsfAFUc4W4FETGCfu5VWsxbVevNC/qOUC8BT9
         ubN7jswjB2XVqPJC1Hq1k9k4+3/2ATBD7k5Ew0QJ5v5gGOmvX0+9nu9oexoWbKH4H2a6
         BBiznpuK7qf52vTzCEoM9bmeBu8+Ueo8P6JigDV+tEiqYglH6JQZj8Ys4Icj8vdhrot+
         pizdmRWCrI6/9wqRiKt6GSKY3wdNa20n+VV42D/2Xc81qohvl4AmjHJ00wDzEWjHuQ12
         4sivJ6jPTAVgLutxElfmX2dy/C1N1wx2G9C5RwLroUn2Odk1CNv5aV3xcgxUpKte1Kf6
         ltIg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532NhqjCfkc8TbhSwiKEoHB2aihS0Qaonk7TdvRmHBI0dqHGDITw
	dtS1k+U8oZGLfvKjM8nR9ko=
X-Google-Smtp-Source: ABdhPJyn1ozEkG2rqRiStcCXf95diPdX7wIdnKVqlBSrHCNbE7xzVdayRTld3L1JujUrB/Fmo6+D5A==
X-Received: by 2002:ab0:41a2:: with SMTP id 31mr15841480uap.23.1606113835203;
        Sun, 22 Nov 2020 22:43:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:1cc3:: with SMTP id c186ls732264vkc.4.gmail; Sun, 22 Nov
 2020 22:43:54 -0800 (PST)
X-Received: by 2002:a1f:cd07:: with SMTP id d7mr19902993vkg.10.1606113834603;
        Sun, 22 Nov 2020 22:43:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606113834; cv=none;
        d=google.com; s=arc-20160816;
        b=TpdCkOwZXVOsR1fPOunwCtNkUQSzJf5J38ldsU0acs77KCYAmzv6T+Ttq8rXQmnBGl
         F+OmZ6/f46+JSbr2nJNd8rRfEgMRgDvH4wpgJb3iKEg6QJHmxAy7fHtfh8s5g9n4eMW7
         5Ut6GL8DV1vaOmtiRqXyEuPX88uSrwfsefMb03rSJwU9m5a/wxnoj66e7OP1eB2U1hSK
         rwfp57Mb6eHljB/Vc/kBiz/f6O0mOWohNLePGt1IzjqfvuMMTvoNAyn86vh6im8zQeUB
         Yx2hmJ9s9RrjANkpgTOgjQmOZGs8OL3j/nMf3cY2WKL6dMXL5mu0+gLfR9+ZvfEtULsf
         Zeuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Rzz3rzFQt6WSYJcGS9bUg/KLwvqRteL6BIN/21JDlQM=;
        b=wev91bk/0Wy3mNtR9He5oNSRqPEs6Kmelbo47aC2fzJJcuciThQhzcDeIepXhjodLO
         UZFv7lJArXCmkfBYC81jmnGf8jAgazEiRmY357ElcN+xj2cjG9Y13o3xDL5hqOcnuIDz
         +Ng5LRgi0ghuuK0TZgcUvAZOOF6ahk0gLtb2n1Oj4nI9VwEjFzWFrATXI1BJDV3++A1d
         Lmy5b+DwPZjSZDsDdLTPlwgUeWjmKLO9FikygQjJphtRtuNmkGm8B/ZvEcYMi8Vt8p41
         nRcIHWFfN4HhqhNA4S/OBTSvxzdZwmm8EWrjyEg2A6mDrp2idCQ4Jq52CQjWxtiYVmJ2
         PENA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id r18si623338vsk.1.2020.11.22.22.43.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 22:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4Cfczz0VBdzLt4r;
	Mon, 23 Nov 2020 14:43:27 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Mon, 23 Nov 2020
 14:43:43 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>
Subject: [PATCH v2] iscsiadm: Optimize the the verification of mode paramters
Date: Mon, 23 Nov 2020 14:42:06 +0800
Message-ID: <20201123064205.80364-1-haowenchao@huawei.com>
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

The mode parameters should be check earlier when recognize the
mode, rather than mutiple calls after all commandline parameters
are parsed.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
---
 usr/iscsiadm.c | 89 +++++++++++++++++++++-----------------------------
 1 file changed, 37 insertions(+), 52 deletions(-)

diff --git a/usr/iscsiadm.c b/usr/iscsiadm.c
index 311978e..667f83c 100644
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
+static const struct verify_mode_t mode_paras[] = {
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
@@ -1331,10 +1347,21 @@ sw_discovery:
 
 
 static int
-verify_mode_params(int argc, char **argv, char *allowed, int skip_m)
+verify_mode_params(int argc, char **argv, enum iscsiadm_mode mode)
 {
 	int ch, longindex;
-	int ret = 0;
+	int ret = ISCSI_SUCCESS;
+	char *allowed;
+	int skip_m;
+	int tmp = optind;
+
+	if (mode > MODE_FW || mode < MODE_DISCOVERY) {
+		log_error("mode %d is not yet supported", mode);
+		return ISCSI_ERR_INVAL;
+	}
+
+	allowed = mode_paras[mode].allowed;
+	skip_m = mode_paras[mode].skip_m;
 
 	optind = 0;
 
@@ -1343,10 +1370,14 @@ verify_mode_params(int argc, char **argv, char *allowed, int skip_m)
 		if (!strchr(allowed, ch)) {
 			if (ch == 'm' && skip_m)
 				continue;
-			ret = ch;
+			log_error("%s mode: option '-%c' is not "
+				  "allowed/supported",
+				  mode_paras[mode].mode, ch);
+			ret = ISCSI_ERR_INVAL;
 			break;
 		}
 	}
+	optind = tmp;
 
 	return ret;
 }
@@ -3677,6 +3708,9 @@ main(int argc, char **argv)
 			break;
 		case 'm':
 			mode = str_to_mode(optarg);
+			rc = verify_mode_params(argc, argv, mode);
+			if (ISCSI_SUCCESS != rc)
+				goto free_ifaces;
 			break;
 		case 'C':
 			sub_mode = str_to_submode(optarg);
@@ -3767,13 +3801,6 @@ main(int argc, char **argv)
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
@@ -3787,12 +3814,6 @@ main(int argc, char **argv)
 
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
@@ -3858,13 +3879,6 @@ main(int argc, char **argv)
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
@@ -3883,38 +3897,16 @@ main(int argc, char **argv)
 
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
@@ -3950,13 +3942,6 @@ main(int argc, char **argv)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201123064205.80364-1-haowenchao%40huawei.com.
