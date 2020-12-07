Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBFUXW37AKGQEHNJGWWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id E27C72D0901
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:35 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id z10sf3526314iol.2
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306134; cv=pass;
        d=google.com; s=arc-20160816;
        b=oh944oy37tc0OHOCk0PJcOMzTrOnMh0ziko8mIyz0iBiIcFXAzf15iF/vPtimXnwqW
         o0W1l9w/jCPTGfTdHjqCYE01RhdRoRjZ/W+lKxMP98cVnIcSg1HgZ2tneRWdh+/z0lVn
         qB8WXi61P7WJybAxobdI5UFpbRgnIf1yBoDfRVwcqZYLTI2BlCdKeGykdpM73XkUiBhH
         QY4hf9mRzSIsjXEJ+UHSyiNU5GaTdg5XnR1snnDBur6ITSsoL9IKW+h3ELO0Ug3STSd8
         1XtWHScdoz+g2MEB1ers77kYz6W8B9rKrndVy30lw8qgrYwYjOVnepS99MJBKAGcNC8d
         lSXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ADp7p4eKlFuNF2P4CfIIaLVz2/R/X8ttFLiFaLJdHgo=;
        b=oatxPQ1Aav04Fo3Sv3iRkTgaqeJ3vXey23ASzQx3Kl9oHPeC/Ysn33AF11SyA9OvXM
         VECPheud2BzmShQVtuWzGqTwP/Ixljo4S5+bjNO2b0Qc70VVlTQcgifvIeKkPztn70x1
         WQsd8jrWajOCrj/EoykIbcZpGDvgXfPNOpcjoP9exSaGEQAfMxDDEkZVFBYoHQjQp2yt
         1DBbKl4pVR2Vs2BmBaPXfFM0I87KPJcGRLKFyZoZNjTyQNpCu6EaIG9/BGHQN8N5l8n6
         Xv9/TPqbsXRjNEt+ghnA/x+l8+ZKhCAtYtzofpZkmWukxI1oyZOMI2AUxf0nAf+JHZmZ
         hk2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ADp7p4eKlFuNF2P4CfIIaLVz2/R/X8ttFLiFaLJdHgo=;
        b=IILyj+ipKMLjKLCnbgx13gi88E1qYzkZDtpQhx/Z97SAWPPFhEgTHgwXTgItPoM3dL
         nRyGz/u0cAlTaB27RD3AnIUexwKbPdhJzro9nhTQefEITx2eruu45oZYp1OSlAMCrCvy
         rKhd+O7eFmPNOQ8Cntc/l9/2dpXoGFeDvxj4xYTsXILWvKQPq03l1Ben+Er7DjDyyTC9
         7Qj/7Zu1Y1eZVxCASsWVEeg0ChBLAHKiPNZg92AlebG9+/NOLiaC9X/m9GDM8FKB3JBv
         RslNexKe3x9Xe7wE3bx5pXZA3bqjCBUmpIdcFdtcV8ZC0EE/I53DRZLNLksDZzRQsA0W
         pTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ADp7p4eKlFuNF2P4CfIIaLVz2/R/X8ttFLiFaLJdHgo=;
        b=kAxRDT9D5ZfsTUyz5vxMOI6h7WInh0vaeYD3U9Ujc2yo0MdETeNJauUgnaIN1uSTH5
         pK2rvSUrTcXnIYANv0i2EZagiVYYUnWmwUQxnva/m/isttq2amv1d92k4QimTPt2R9m6
         7b0z1/UoSwfO1gFOy+hR5TtFnXRdjSWM247+WZ+lqOBz4Rht8ShqZP8K1vVRH9Y+3vgA
         vFOi3j966y/1UGABuR6dTiUoqRMhKTtLy/vTNdPrqJ5lwh209gDKgerlq0BFrJvC2Ecz
         v4iyyEwokQWP6khmEDlCdzHBwhcq1Oo0YBQHdJkqma1HWQtZfU9Fa6KevWab1vJXCCou
         MZDQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532w760nIqpxjhHYcJ0OL5Xv06GPvTNRapZgVDZXnvb7vQbG9f10
	C5JDACKEkZEfoOKzoE5HmF0=
X-Google-Smtp-Source: ABdhPJxg8gPZwNiQxxOG82bt5cf+lkkiOa6iiJ8hnUiMN+/GTXaCuBygei6o3RrNWsOC0MV2vbfb6w==
X-Received: by 2002:a92:7f0e:: with SMTP id a14mr7181925ild.181.1607306134737;
        Sun, 06 Dec 2020 17:55:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:f48:: with SMTP id y8ls2623881ilj.7.gmail; Sun, 06
 Dec 2020 17:55:34 -0800 (PST)
X-Received: by 2002:a92:4019:: with SMTP id n25mr8357531ila.25.1607306134190;
        Sun, 06 Dec 2020 17:55:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306134; cv=none;
        d=google.com; s=arc-20160816;
        b=lawvak020vBjABGduSlX3657ZuEjyn7jcBRV9OPL4UEni9mXzfEDZOhryN9Yl9Egv+
         k2CjH7eyC5X3hwsK9UsUKGOaiEur82XMDHBrnvssFuPd9B/up+ik4b6X7XZvaFgr9qeE
         zwdQysk+kSEPDgZxTBWLFH7mC1hfDF1AQqHMzuClGbaNm+gNYb4ht9w02B8sFwdlstCh
         MAN2QdymADXWol1vrw6P9mZAHbQCCeUgahrtcdxlvDs/QSv8CvnRcYHp/HTkMznaK6P2
         8s8g6ntez0VFh4/xEugH/QGXoR2rCw0ohWOprC0VO8FvSvegI/Dh1iiGk4z5WfdnXpgl
         2Hdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=XRIs+pTIA9dYcU5az6Zw0k4dQlXfM+R8pmj8edVht5M=;
        b=ICxHUYCNxW2f3V5bx3vr97IXGK2US76bkWq+4laBgKIcRcVskKvOigC8sPTJywpa06
         XJwXz6+wqERPy2gMsq/FtSx2O1c26eDMKoZYdNZA18XVhZPWLurglJyJB5jAyoyT8jXB
         fdv5Ae3WsguZl4Ezqf2JtBn87IX3TR4ze7bPStUCyWsRnaUz9A17DDo4W/gDVIIb/Yuu
         BT110GxhVjB4WswmfLhL3jv2mSiVty19L0zurJLrYs+nuhijhoyHYAHMYMmWBDchKz5q
         Nt82EAOrFiO/6EIyu3LsPeXgv5Og8Lxv1WLxxroe+XPImDeSjoNqy5s8pKRkwl3ShgPJ
         SL3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id o12si501340ilu.3.2020.12.06.17.55.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vx6p8rzM1S0;
	Mon,  7 Dec 2020 09:54:21 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:50 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 12/12] fwparam_ppc: Fix memory leak in fwparam_ppc.c
Date: Mon, 7 Dec 2020 09:54:10 +0800
Message-ID: <20201207015410.48488-13-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
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

calloc() is called because loop_devs() to allocate memory
which stored in array ofwdev. These memory should be freed
at the end.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 utils/fwparam_ibft/fwparam_ppc.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/utils/fwparam_ibft/fwparam_ppc.c b/utils/fwparam_ibft/fwparam_ppc.c
index 6a45b8c..da9d76e 100644
--- a/utils/fwparam_ibft/fwparam_ppc.c
+++ b/utils/fwparam_ibft/fwparam_ppc.c
@@ -446,6 +446,7 @@ int fwparam_ppc_boot_info(struct boot_context *context)
 	char filename[FILENAMESZ];
 	int error;
 	char *devtree;
+	int i;
 
 	/*
 	 * For powerpc, our operations are fundamentally to locate
@@ -511,6 +512,10 @@ free_bootpath_val:
 
 free_devtree:
 	free(devtree);
+	for (i = 0; i < dev_count; i++)
+		if (ofwdevs[i])
+			free(ofwdevs[i]);
+
 	return error;
 }
 
@@ -525,6 +530,7 @@ int fwparam_ppc_get_targets(struct list_head *list)
 	struct boot_context *context;
 	int error;
 	char *devtree;
+	int i;
 
 	/*
 	 * For powerpc, our operations are fundamentally to locate
@@ -592,5 +598,9 @@ free_bootpath_val:
 
 free_devtree:
 	free(devtree);
+	for (i = 0; i < dev_count; i++)
+		if (ofwdevs[i])
+			free(ofwdevs[i]);
+
 	return error;
 }
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-13-haowenchao%40huawei.com.
