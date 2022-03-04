Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB6EMQOIQMGQEWJ4PYHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EBD4CBF1E
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Mar 2022 14:45:30 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id x2-20020ab07102000000b0034a00832140sf2419704uan.4
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Mar 2022 05:45:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646315129; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0uw190pt37PDy+z4Npmqzha79WU2oQhUtxC8QvdSufNZ+gayHduwQ8gsnHaFLyFiq
         gkM9vQUfIJrFlthyK6LeS07SAytspSU6gV1mF3FtsA211htfUs1wFpSUFUDV3rW/LSYe
         AR2b/1PH4aaD2af3SqC58K5lOzfaXKHPKSEa9AmzzRIYZfSDYNJTXNkoGdQI9a6B7CLo
         TCxocBQqrp8e2GpKHTP/2PEHsGNNIic4ZE1AzMebEvH1RV7J01fvjKwDfLgiopRkvxEv
         xGXhh/MBOyQ+yLtLSaUykIX7Y12L2D57Sl4hghoSrpiC2+CvdWZg8fFzrxcSWrFahiGa
         dZcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZgXqZ2cZsYA7E1jagZf2/7gCOEH0m+KBe4tN+WhuyjE=;
        b=SKKKF5mefMtAZeoXucNcrturFsBeg57whNfMlDDeL2uatQbfULNc40moUuMS49/T4A
         TmkWZEpImatvmENLZKJlSFn2XciRFAM91CVTkS0kkiwLg01Qo/uYZumxQxwO8MxM6Qax
         LxvGUaPEd3+Jkx5TxCmQC9r6K81O4BCV+j3LwMRWWpvBIIhl/Wq4ueBD7SXeyPsWoQ6Z
         sAFgp/vAD1z39pasjDgNYd5hosd/zWvtDbQ0NfCYzvj++SXH651IH0FA4iXf2Aevv3PT
         kbAvBA/i/GoAsc6YLHyKH82nEEDYQDc9m3DcN5fYAEkGCSpYkEn0wKk+OXRYb4+FaDDT
         Jpeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZgXqZ2cZsYA7E1jagZf2/7gCOEH0m+KBe4tN+WhuyjE=;
        b=c4leS+hyyaYQT+RCZMt4h74aTeCuYaA9OP91BFYX5u3SsnnpLSo/+2SucV2PU7y+q+
         wzNIlK4eomGyE6pVxDmS3X/svHk8Qr/YmbTEarXYqswmUlT8TVUs3AS85m98xVOgzNy3
         sk4kLnUd4zCsCYWHH5IsO/wfin81CnJ1SXoJeq//Nne4i2ba0/clvZYN3JaFkSLEAMy+
         Qo+dkl4o8Ohp/+CzLSxJ5OoPUHEOAsbk/940mSZmddCC3Fz3+gc+gnflaOYb1zIymEGS
         ljaMOS1T5DnsCEwgB5VF/+NiPHvfyHfqKLAAJxkjWkBNURd0zkZVj3q1Rao2GFzFArk3
         QEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgXqZ2cZsYA7E1jagZf2/7gCOEH0m+KBe4tN+WhuyjE=;
        b=Ja70QQ0/WQ6e0ohILE0OaFVWteZPKpkpswcWpc35vusCiJpWG5iMgC9tw+l6eDxmUe
         HD0yUoeVPmUmkFD7RjFMNQ4K44SIMUEcQFabruD5v7mIPzxp+zEHmfGGF9JEgd2KaFE9
         cRI/llVWjWMCDKkDn2c3FjPjPlmbuzfZUClpoUjXKsG1qkky6vPAJD/7fSTKaBeLGxCL
         Se5Dg5fybb3OAHC5N4u6045n1PNtYNoIXUtdZCIQJhqqqTn7Q10gmJVV8wrDlJAchA5G
         CsjmWOXodwmzEAaHk9Vn+8Ah2S2AISZWTFk1pzbdhQgXypOi2Ec7HVHT9qlf0gFwUn6G
         pmxQ==
X-Gm-Message-State: AOAM533RBUZQkYE+sivL/aT0DaW1CG1ke6Cd26I0JGvxuTxOlCB1xGQQ
	+EWS54ULoiNuo5Qsf0WUoYs=
X-Google-Smtp-Source: ABdhPJy1Y3P8Etw4p9Y10NHs6/mEcLUXuoGWE4nBfoaJ6/RWjpLZTqIdZjmUdIgZ5LPzZqf+w7ATLQ==
X-Received: by 2002:a67:cb9a:0:b0:31b:e5ee:41f9 with SMTP id h26-20020a67cb9a000000b0031be5ee41f9mr15445389vsl.70.1646315129610;
        Thu, 03 Mar 2022 05:45:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:b40d:0:b0:31a:a535:ff39 with SMTP id x13-20020a67b40d000000b0031aa535ff39ls472716vsl.7.gmail;
 Thu, 03 Mar 2022 05:45:28 -0800 (PST)
X-Received: by 2002:a05:6102:a4a:b0:320:7959:1e3a with SMTP id i10-20020a0561020a4a00b0032079591e3amr125563vss.12.1646315128000;
        Thu, 03 Mar 2022 05:45:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646315127; cv=none;
        d=google.com; s=arc-20160816;
        b=MmKE1n3brbR+yw/fXcYLR9OcYETMIQzOE+lH+J3Ld2z64WBNywAJZbK4SUMz2mR7wI
         vAspRL89EK+b9ZvAFopzZpKfA6Dowo3nbK60Od4iz9aKzogDkjQYG6yjUw4LHpqm8CL+
         ka6dK9z8H4Lp8tYf1vq/RX/tGuePQmhIb30h0n9EFuf3Wurd53uiYDPYKi/8l6QvR6U9
         i/SlfJGN7BaT92qsHd9s8wwyp+qlfelYXi30OAW49FT2w/Z/7lMBO+UemoAoC0MTvjxY
         3/jJFGvDK0L91q1d744AK4+/X/X6pnSriQo9+gWXaYNDp3n3mjmWyDY4vc3Bvd//K2nc
         Nf3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=P2+eI4BmkN7gqWG5+9p6+0P1uMmaM4OuYbmkxkwOdVQ=;
        b=pkA6XcZoQf3e3g+dJknu7L+BoQhpHuee0ksvffF4hun7bWUpdwUynuiJ0VMfEDrzNz
         VokZEjQw+QG+GkkIcNpAgtWYXKJgk6Pquwy8D55GH0NXF0JgR0SccuLtk+AdnRHITCrE
         EEGt/kLGAkOaQqUNRVHCQgmoQcCd0utBSv2BnklJSnQkGAcb6Kd4rq7aprPxc3iip960
         qRpJa+XAVeDLZVz/wxzcMNGHyZmOL52FOOxlG5D1Mct+GmQ1tahYyg6V33El6XCvhwkk
         KiYp2m/YLFhvliJ0F+13ixlr+tXPyG5G7CRJCMylrfhUKN+n6Jw2cfWUq1zhWOdwkOYl
         9Xpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id p15-20020a056102124f00b0031e7a7fc5dbsi116396vsg.0.2022.03.03.05.45.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 05:45:27 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4K8XG60D7SzrRns;
	Thu,  3 Mar 2022 21:41:50 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 21:45:25 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Thu, 3 Mar
 2022 21:45:24 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E .
 J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 2/2] iscsi_tcp: Check if tcp_conn is valid in
Date: Thu, 3 Mar 2022 21:56:08 -0500
Message-ID: <20220304025608.1874516-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220304025608.1874516-1-haowenchao@huawei.com>
References: <20220304025608.1874516-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

iscsi_create_conn() would add newly alloced iscsi_cls_conn to connlist,
it means when userspace sends ISCSI_UEVENT_SET_PARAM, iscsi_conn_lookup()
would found this iscsi_cls_conn and call the set_param callback which is
iscsi_sw_tcp_conn_set_param(). While the iscsi_conn's dd_data might not
been initialized.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 14db224486be..a42449df6156 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -716,13 +716,17 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
-	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
+	struct iscsi_sw_tcp_conn *tcp_sw_conn;
 
 	switch(param) {
 	case ISCSI_PARAM_HDRDGST_EN:
 		iscsi_set_param(cls_conn, param, buf, buflen);
 		break;
 	case ISCSI_PARAM_DATADGST_EN:
+		if (!tcp_conn || !tcp_conn->dd_data)
+			return -ENOTCONN;
+
+		tcp_sw_conn = tcp_conn->dd_data;
 		iscsi_set_param(cls_conn, param, buf, buflen);
 		tcp_sw_conn->sendpage = conn->datadgst_en ?
 			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220304025608.1874516-2-haowenchao%40huawei.com.
