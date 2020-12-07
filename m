Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEMXW37AKGQEDU5XRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 597082D08FC
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:30 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id v50sf5378336otb.15
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306129; cv=pass;
        d=google.com; s=arc-20160816;
        b=EdP8pWikI5AxOq9/0MvXyp5M4kfq2GurpifRmdt0ZrMu1bK1KlWwudKVkY5qYC5Acm
         9wFiXz3JWj3MF0yqtd6g7dEnp6oJb2OF40q4vxoSV5QzDdNFL/8rhBsBi70whBZetNJo
         Y/PBotHljeA8zypcMR2BbpFiv1mf5ryxQyJBlNYZAiUi5iEwXVimb3uP6iSRMyljJiY8
         plHiAoVk2BOZA8B12HujCjucpgEO6Qb/rz4HZnsWHb71atmIP/qTlTtdN5oH1b4dGMML
         82LRIz8x9kO4c7fCTKZZBzMwPlF3jDTPo2mKRzCxDgv6zh1Jh9m1tTJC5jn+pizt9DG3
         p5hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=VrDP7BR63rgNsMiC5eipMwY7CIf+NOxjCM2pemYDh4o=;
        b=wCVhRy1TKXjZpw8rF6QaGTMT1yCdERfExBVAvPel/Nd6iN/Kf29O+JAx2XX7KUknRm
         rMuJhTX8PwCHKCQCT7WeTRJAiqBwPFWMKINGp9KdtQJNZEyy6bSP9lfFHXYq3E2o/v02
         /WZyKsi444ezGMb+sOjflD1Y0Z2BnywAZ+yur/JxHjd0MwdgKKGBxx6InmFOBhqtEU5a
         bxfMHjomcej3D4X06pYagenwTNR/+ltqLrlLecQArF/b1G24Urw/9PDa2+1Lpzb/HHfI
         l0TmxdMWH0L4z3NZsAd+n+LBsBVZGUSHUl7B+AL6gX2v00q4DM45bnyal1jTJbXcxeZk
         8ibQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VrDP7BR63rgNsMiC5eipMwY7CIf+NOxjCM2pemYDh4o=;
        b=qz2oYEeqOBso9h35loi6IoQQ9M4V2H/V26ZqZS4ghgFkOYjrZafoANIJv+anR44Sk4
         Pm3kNz5n52/bvHp6J6cFaJyY878pmuL5MFi+G6goCrPNp+Z1TU87zV4Nif7cXbXY2FWf
         j9c13TEiu1Ax9zWAaHrZ6iTLX0NaS3KumBgegmNGWc4SqBYCbmLZA9/x7ZZyEz9lSqah
         Fu5ylhL+ywz6ChiAyWyI1VR7rsoV2XRp2Pw22Fa9tivEdNJz590VgPoEOdV+GPOKhojc
         PIB/cAJcr5vem0aU75sutRUMdiLpNlOprCTKpUNwlQIarX1t1tmYjmfGmXYk/PyLzEGX
         DOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VrDP7BR63rgNsMiC5eipMwY7CIf+NOxjCM2pemYDh4o=;
        b=hOcPnrXjQaw1GqOZCSQaP1Fas+mzPwJ788GoLcmEpe6/B5SOXDDAdQyuH53vjaCQe6
         jzn/JGJXCcfDQ2X4hxkaz1GjSnX5p2/XhdliG2oql58qLzlqNAKqvB/ZPMOXZw7KB3LJ
         jPFsWQhq+Bq6EVD/4Yy67J84mXcbiYP3ZdmetKRaRrJmuvXGWumul5qPdEUS3TvonI37
         xuOnf2IX0hzQ3HJ8bfybFmEhR3wtYpeeJrtizuW9fe5ZRxPX+YLgri2sLkAGcFv3ILzh
         Mo04ZegT7NfDsU5w0xjN6IAyBrU4YT8oMdlhJqSgDkct23gvAm6jMMYV2yB0MD6XnM8Q
         E8Wg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530CpNyOXO59iN7XTvwVpMJRUvxSelt03Crpxn43nlsVnDOxhGiE
	gnMuhWfSeuM7QvbqB4P64ks=
X-Google-Smtp-Source: ABdhPJzjtDPFju7Su0MEXWIqeyOTFxfCSp7gKbBf9o2OL3rQZO2q+t3IbjxSRawGU3rIsgOwrMEinQ==
X-Received: by 2002:a05:6830:1252:: with SMTP id s18mr11359431otp.4.1607306129349;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:c698:: with SMTP id m24ls968986ooq.3.gmail; Sun, 06 Dec
 2020 17:55:28 -0800 (PST)
X-Received: by 2002:a4a:da0f:: with SMTP id e15mr11074239oou.51.1607306128885;
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306128; cv=none;
        d=google.com; s=arc-20160816;
        b=jJt5mpq6ppXA6/Mw7cnx4KSoB99bKHlbBhp5XGvgexUFT5VUmV1ROogc+muBXr2LS/
         /GR/dXX3ulniepj6NBotaDObcb5qWE2nL0rYL9f/PJl1lFrhpPT5tUv5BLlknCjNCIrg
         691/saWcMfa2mzKRulHHoVmAlXtMGHRcvSrJJUvgJuVCG9KfxMH/5OoNe0jsgl6x7o/K
         l9XP1Kiq4bV7J0zaX38jWBa913XcH0HrLIUF48KL67I4g3InHZg7+tnqU3U3ZGza3Cin
         Wu8LA35YTr+WHJYZEyq5kffPJgqUk7n9Gw63EVgtgfywqmpsee/qhcNz8/fFlpAgpShe
         X7cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=W/mmPBzhZkEQGld04Y00EMcc6Fft4CLIxYSaVH1xB4g=;
        b=xk+8zVGD6SL9YZU2JuSwWbGkTISBF9g8nthnAgUA5H4RBpWAML8pVEZ+pFVYb21MuP
         ghDYzVpZ1wCbmmUsXziEcqnl6Nn9F5aGnmFp1JYkY5vnWTlTYywARBr4iNyUokk63Fw6
         bGsZbV8GApigQkgzeoHTxLUuIu7bCPmcYvqiKnCGKnBDZjJlinil2CAh84mQbycng0yn
         umSAyyKJV2oyO4zXKby2FZ3gBkHPReCMWnrMPukm7CYZaNjM7rWo2GdDf/uaXrgHqDjV
         UfiF8McVGPC+Fzvc676iuakPiYN+r/8VuDRiqPN+Fkvxj3HLx7iFW/KyqKuZSKzPl+mq
         S5Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id k134si605949oib.5.2020.12.06.17.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cq5w83Bc2zhnYk;
	Mon,  7 Dec 2020 09:54:32 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:47 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 07/12] open-iscsi: Clean user_param list when process exit
Date: Mon, 7 Dec 2020 09:54:05 +0800
Message-ID: <20201207015410.48488-8-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as
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

Both in iscsiadm and iscsistart, a list is initialized to management
struct iscsi_param which allocated by idbm_alloc_user_param().
While both of iscsiadm and iscsistart did not free these iscsi_param
when process exit, this patch add a free flow when process exit.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 usr/idbm.c       | 14 ++++++++++++++
 usr/idbm.h       |  1 +
 usr/iscsiadm.c   |  4 ++++
 usr/iscsistart.c |  5 +++++
 4 files changed, 24 insertions(+)

diff --git a/usr/idbm.c b/usr/idbm.c
index 42c2699..f8b50f1 100644
--- a/usr/idbm.c
+++ b/usr/idbm.c
@@ -2903,6 +2903,20 @@ free_param:
 	return NULL;
 }
 
+void idbm_free_user_param(struct user_param *param)
+{
+	if (!param)
+		return;
+
+	if (param->name)
+		free(param->name);
+
+	if (param->value)
+		free(param->value);
+
+	free(param);
+}
+
 int idbm_node_set_rec_from_param(struct list_head *params, node_rec_t *rec,
 				 int verify)
 {
diff --git a/usr/idbm.h b/usr/idbm.h
index 46cd82a..7496f1d 100644
--- a/usr/idbm.h
+++ b/usr/idbm.h
@@ -153,6 +153,7 @@ extern int idbm_node_set_rec_from_param(struct list_head *params,
 extern int idbm_node_set_param(void *data, node_rec_t *rec);
 extern int idbm_discovery_set_param(void *data, discovery_rec_t *rec);
 struct user_param *idbm_alloc_user_param(char *name, char *value);
+void idbm_free_user_param(struct user_param *param);
 extern void idbm_node_setup_defaults(node_rec_t *rec);
 extern struct node_rec *idbm_find_rec_in_list(struct list_head *rec_list,
 					      char *targetname, char *addr,
diff --git a/usr/iscsiadm.c b/usr/iscsiadm.c
index 667f83c..ea1643b 100644
--- a/usr/iscsiadm.c
+++ b/usr/iscsiadm.c
@@ -4075,6 +4075,10 @@ free_ifaces:
 		list_del(&iface->list);
 		free(iface);
 	}
+	list_for_each_entry(param, &params, list) {
+		list_del(&param->list);
+		idbm_free_user_param(param);
+	}
 	free_transports();
 	sysfs_cleanup();
 	return rc;
diff --git a/usr/iscsistart.c b/usr/iscsistart.c
index ee810f7..73991b3 100644
--- a/usr/iscsistart.c
+++ b/usr/iscsistart.c
@@ -347,6 +347,7 @@ int main(int argc, char *argv[])
 	struct boot_context *context, boot_context;
 	struct sigaction sa_old;
 	struct sigaction sa_new;
+	struct user_param *param;
 	int control_fd, mgmt_ipc_fd, err;
 	pid_t pid;
 
@@ -541,6 +542,10 @@ int main(int argc, char *argv[])
 	mgmt_ipc_close(mgmt_ipc_fd);
 	free_initiator();
 	sysfs_cleanup();
+	list_for_each_entry(param, &user_params, list) {
+		list_del(&param->list);
+		idbm_free_user_param(param);
+	}
 
 	log_debug(1, "iscsi child done");
 	return 0;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-8-haowenchao%40huawei.com.
