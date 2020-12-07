Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBM4XW37AKGQEXCOWJUY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C92D0903
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:56:04 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id t23sf9212404ioh.0
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:56:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306163; cv=pass;
        d=google.com; s=arc-20160816;
        b=tIONgrnsUyA3RYqtHEMim5XbXSlrUkRIpy/XF7wUM7iXI7r9j+craWMqNkAVIdknyM
         wRTb7dNw6E9IUER5G/tvM+LhAzCbTQ1dsYBFGHg2v7EZgI03NSTGbXM2RkSTdLHK5ZU9
         Xewgu55/VNA91wBzmxA1fsoKU+uOJ96RjOPLP9EZsOhMKIX64N1SS5A5lQzFtFan8FKJ
         bOZf6a2nP7PR8SxcvmH+W6PzZ9xzg2zVpolRkEe/+8PPVvlaeM/QbkC//M4sljDRNJzK
         w8HKIlTdaFvZIVv/DxUZLNMECNK9IqbKUda6QPNSBS47KjJhSovJ/4dOccrhq7D3xRay
         NoiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=uvlSraN0VBhNo8cLRJicA5BHkWs+jepMaxGejZni5VI=;
        b=gYs/UJ++CPqRPYb9AtVkhhPv/qZaawveeO4XXgAcZDqDEPjP7/GnKQz3mKqbDkRd4a
         krLbzGgHQerkjC15GwpXCosSF0oYRR9ZNEghbjtveUdT4K0Z6TXMKsIk6DH52LU7LuDt
         rAJ+I4XdK9yQ8lb/f9qYPvmKp7bshK9e41GpuAwpLUkFI7FipjrI+rpXzERVY0R/vdm0
         V9GExyFTPt2MQ/X1JAaD1ZH8RFIqWLZlPKX51PPIweOcBJxGyy/T362cW2r+YbMgdjkG
         DjjFZP8LzNfbhSshtew6rQpkAXGTuQ7i47F85uvLveXFPYqptZCmyfmtamklqnWT/ODa
         xsXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uvlSraN0VBhNo8cLRJicA5BHkWs+jepMaxGejZni5VI=;
        b=UaAlJlQgbQ5x1AGgj0sKAVqY4Sukhs/R31J4iIQ2z3XlCZMGWXbseMNKeYiIyehuhK
         ocwQ8mAXBB0fWSJppBwm5VChLiMYNHu1dgxx29jTvwWZjK+cnnrMWa/Kat6TMJ+u4mTc
         EyMZyMz4qADcU3aI5mCKEkvTzBNQsb9SH0jH75u/IfghDYgWiYJzI9UrtZ67J5ygoFfv
         JnKaYETNjNawkj19BlFT9ZxsJcGhQFDqTR94MZQer5ztxfHErWxFFhAziGtQZc7C2Jwm
         YsUMJ/Sqj71AoPj6pHURERZx+O9ucGnqClB0cj+y7OCk1HJusFq5JG+TWGAbUIB+0Ptg
         2ZhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uvlSraN0VBhNo8cLRJicA5BHkWs+jepMaxGejZni5VI=;
        b=l0zpQsxR5WUzNdth9hSy3FS5BjFkNX+BjMAHknYhGFnJedheAxPTYCWF5+SaXYB7BJ
         0rUl3TF6eqr8jlugVn64o3dfMWPUWg7wTo5TeDgaxTq8I8OZ9YBUvEudXVGuDpzoTw/9
         MJ2Qa5V6QDDP0l3wPK2Te6iwhrAt9Gz0iJc/1LT4SpajsmUFBZpZDoTbS7Mvs8MCtx+X
         PgUy89NClPSr9WlCgFlIk+b2jj8sKIVwx1Q3rFHwZH0A2EuHQWj+TxLNRIznmmyyZeO2
         oZteq2rybgSg+g7K4ajdwFknsppbcNSCUZxQsEyOxgwCtDzd0s30NFSUB4KF8F7EhYb0
         oxuQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533jdyK4+w2X9yfQkQ/VfmgygS/wtZyRyw7dO7a78FWCkOi3iPPu
	xmgvAkMJqUGfQD8eqBYo0QA=
X-Google-Smtp-Source: ABdhPJz+0INBL2elRqMRzQpCI3JAjjzEO36biznbX58OwNKBVf9Bxy2sgxDdA+k6b+H1sawB9Oz8bA==
X-Received: by 2002:a5d:96c9:: with SMTP id r9mr17748216iol.45.1607306163121;
        Sun, 06 Dec 2020 17:56:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1048:: with SMTP id p8ls3881924ilj.11.gmail; Sun,
 06 Dec 2020 17:56:02 -0800 (PST)
X-Received: by 2002:a92:aa47:: with SMTP id j68mr6061287ili.16.1607306162675;
        Sun, 06 Dec 2020 17:56:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306162; cv=none;
        d=google.com; s=arc-20160816;
        b=F82kPcW0YexEGOSgC+KOEu/SZIUa718bnPywHi0CvTXYMQaTpojndDcdHP6uguisvF
         RvbD1HFqdlomPqvbuT6p9BXSExjec3tMtR7N3Byr+lgiYWXzGv/oQXgPM3iNVJv6HSr8
         nxZJbucKQ9GuCEt5xLeXdWk0zKD3JvKcGTw73YxLbQ93CI+Vp18vkwwE+jp6J6oOjkPI
         qIH85imkkaTEevlYjrFLmqbxRBwM2hD7E9cbK3HUUlOcvskamCuxu/DQQ452EJsTL3U7
         CWW1TaRgU3YoBP84inHrzpi/tXI4i6XlxlWWKoQ+wAyDDe1jm9FKm07w/RcUpx97OM6w
         sVaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=SByZ/TEDLrC6J8AdHY14UF9vDElnNb7XflXNwdbK34A=;
        b=BFWudLLTlqaPv231R7k25COWE4dNXZMG91BdgKGdwDA/kS7+CIzkuWTkKDjijmDr7I
         +GMiKRlrO5OR+wkJ5BUSGAonLXWN5OLFJWepVEixajvCTGGaLdrGgvgBL0dykwJ4PWPR
         WI9exMqTj/aZgCa0PG5dmKD1jUjEzh/ao1R+x2+1aLcRXe6NhrragLPMrLLS1xjvYtLx
         BZu1LcTJ05NEGTY9lssu4SOqZGgQ99Iu2SKNzoGxT10ENlbdKuGvtkgY5L2cU6p9/tNB
         qWnW68TfUJSPYUb/ASOBoEqs0R1Ggs9p9Jz5Qv0/JaPltPpFMS4ItlVMIkMFbCa/Bh1Q
         pJHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id q4si630412iog.3.2020.12.06.17.56.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:56:02 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cq5w83kzDzhnYZ;
	Mon,  7 Dec 2020 09:54:32 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:49 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 10/12] fwparam_ppc: Fix illegal memory access in fwparam_ppc.c
Date: Mon, 7 Dec 2020 09:54:08 +0800
Message-ID: <20201207015410.48488-11-haowenchao@huawei.com>
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

bootpath_val is allocated in find_file() and referenced if find_file()
excute successfully, while it was freed in find_file() and
dereferenced after find_file() if find_file() returns 1.

This patch remove free(bootpath_val) in find_file() and free
bootpath_val when it is used done.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 utils/fwparam_ibft/fwparam_ppc.c | 33 ++++++++++++++++++++++----------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/utils/fwparam_ibft/fwparam_ppc.c b/utils/fwparam_ibft/fwparam_ppc.c
index 25d4532..6a45b8c 100644
--- a/utils/fwparam_ibft/fwparam_ppc.c
+++ b/utils/fwparam_ibft/fwparam_ppc.c
@@ -292,15 +292,17 @@ static int find_file(const char *filename)
 		fprintf(stderr, "%s: Could not open %s: %s (%d)\n",
 			__func__, filename, strerror(errno), errno);
 		free(bootpath_val);
+		bootpath_val = NULL;
 		return -1;
 	}
 
 	bytes_read = read(fd, bootpath_val, bootpath_stat.st_size);
 	close(fd);
-	free(bootpath_val);
 	if (bytes_read != bootpath_stat.st_size) {
-		fprintf(stderr, "%s: Could not open %s: %s (%d)\n",
+		fprintf(stderr, "%s: Failed to read %s: %s (%d)\n",
 			__func__, filename, strerror(EIO), EIO);
+		free(bootpath_val);
+		bootpath_val = NULL;
 		return -1;
 	}
 
@@ -381,6 +383,8 @@ static int loop_devs(const char *devtree)
 			if (!error)
 				error = locate_mac(devtree, ofwdevs[i]);
 
+			free(bootpath_val);
+			bootpath_val = NULL;
 		}
 	}
 	return error;
@@ -468,9 +472,10 @@ int fwparam_ppc_boot_info(struct boot_context *context)
 	if (error)
 		goto free_devtree;
 
-	if (find_file(filename) < 1)
+	if (find_file(filename) < 1) {
 		error = ISCSI_ERR_NO_OBJS_FOUND;
-	else {
+		goto free_devtree;
+	} else {
 		if (debug)
 			printf("%s:\n%s\n\n", filename, bootpath_val);
 		/*
@@ -480,12 +485,12 @@ int fwparam_ppc_boot_info(struct boot_context *context)
 
 		if (!strstr(bootpath_val, "iscsi")) {
 			error = ISCSI_ERR_INVAL;
-			goto free_devtree;
+			goto free_bootpath_val;
 		}
 		ofwdevs[0] = calloc(1, sizeof(struct ofw_dev));
 		if (!ofwdevs[0]) {
 			error = ISCSI_ERR_NOMEM;
-			goto free_devtree;
+			goto free_bootpath_val;
 		}
 
 		error = parse_params(bootpath_val, ofwdevs[0]);
@@ -500,6 +505,10 @@ int fwparam_ppc_boot_info(struct boot_context *context)
 		free(ofwdevs[0]);
 	}
 
+free_bootpath_val:
+	free(bootpath_val);
+	bootpath_val = NULL;
+
 free_devtree:
 	free(devtree);
 	return error;
@@ -542,9 +551,10 @@ int fwparam_ppc_get_targets(struct list_head *list)
 	if (error)
 		goto free_devtree;
 
-	if (find_file(filename) < 1)
+	if (find_file(filename) < 1) {
 		error = ISCSI_ERR_NO_OBJS_FOUND;
-	else {
+		goto free_devtree;
+	} else {
 		if (debug)
 			printf("%s:\n%s\n\n", filename, bootpath_val);
 		/*
@@ -554,12 +564,12 @@ int fwparam_ppc_get_targets(struct list_head *list)
 
 		if (!strstr(bootpath_val, "iscsi")) {
 			error = ISCSI_ERR_INVAL;
-			goto free_devtree;
+			goto free_bootpath_val;
 		}
 		ofwdevs[0] = calloc(1, sizeof(struct ofw_dev));
 		if (!ofwdevs[0]) {
 			error = ISCSI_ERR_NOMEM;
-			goto free_devtree;
+			goto free_bootpath_val;
 		}
 
 		error = parse_params(bootpath_val, ofwdevs[0]);
@@ -576,6 +586,9 @@ int fwparam_ppc_get_targets(struct list_head *list)
 		}
 		free(ofwdevs[0]);
 	}
+free_bootpath_val:
+	free(bootpath_val);
+	bootpath_val = NULL;
 
 free_devtree:
 	free(devtree);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-11-haowenchao%40huawei.com.
