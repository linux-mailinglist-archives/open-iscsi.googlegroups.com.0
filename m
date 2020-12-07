Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBEMXW37AKGQEDU5XRLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 543A32D08FB
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:30 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id z29sf15995844ybi.23
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306129; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q2SXLXDBk3TcGmTirv4wGh9bwborZwWDdE9yLKc4iBg8LXEVjk++lW1jACwEeARha0
         quumGpKwC7889ECy1eZijhexWYIItS91QiPkpzxRcAA4MwaoeY7WuhP2Xnxh0mJbiamo
         boxp8KUJbRqQnj7ybIL5SawJJYQ3Gmlk2aLviwLCA3YY+J2f16xYAZ+KZ+UXQSslQ0ND
         2uBEf9cAOfxyRSfwdxHdIYV2HB7oWwdYZ9X9CzOGKvOAurlD9H/9R2JdqF1Tr2S+NeLs
         +a4DgGneh/wW+NiOf4yCAbwtWBh9tN1LZLzDJTre+tPlcYDsUgMCkLUoYvBYGbI47hXO
         iJeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=unK1bkymALm2Yiv+V36drVCVcMSoZ8Hj6TyaIIhhWgo=;
        b=ffJ8DFQfAw+U0CG6bUjb72FFjP3m1rth9QKje+gloibEnocTTbseUTg0oK3R+Ob7TB
         UA1BKWK66LZmuOqeVEhBRR2IW7VKYf2UTWzrtLj+FTmMIxrKb7nPBqFSsL2zHXRCH98k
         hYgNdA9GkVokQg9zqCsZB9RYA8kh7uRRtm4hDrtjC1NFinF8LdohSd6sVgR7d6OvBv4U
         3eLtp1emYh1trblIwWvLU9Jj4X74G78e+Au1c0+NATF1WU538rs65aLPrafqFy9t8kaw
         1jtNLvtChFrWpKIaJRn4tO3T5F+xv6r3d4O+OnfC5Gd3WHtKGrWR1bsA/GStTA69hkIf
         Qz0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=unK1bkymALm2Yiv+V36drVCVcMSoZ8Hj6TyaIIhhWgo=;
        b=BYEnDxq8EerdB0N105slJ6jcqpM4oBFr72oAbVB+w8A/SeuHOIxQL+KlABuczOQb36
         b1wgQ4JgPh5YmvmOBTBNNVJDynBa+PAmFpGyPKVi7fM/1HJnjE8wMhVrIXFyGKrjP8a6
         WuuQEQCGWDtlN5Ifut6DWJa4CO03ddrBd2SpiW9cHu6Cv2txO3BJSG+pco0M6dkIS6Va
         s9dIuhw17Nqm53mJtjJ//oUD6sB9uNJU9rzJFPRUQpa3JfyBhgZoq4SV4HxEjhFoUscQ
         RiGcfA9HYVMKigx3F9tojSDZPGJP/Vwcy5mdLdpVh1jKS6w2Aamdhwpa14Qlec/sEPLN
         /FBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=unK1bkymALm2Yiv+V36drVCVcMSoZ8Hj6TyaIIhhWgo=;
        b=DDu95QPDxBM00c5Rb457tP/ioyUu/2lhs9BsTvC1Ljy2lBwkjMZs9M8qYOprz9VpAK
         deaImO9oHqv58yt1mZ40AOBVu0ODBvJK5GDRln5UCY+AheqMrW2kGE/d1DEmwVJrEq8j
         6UDkKtGNz6pp1Bo0gW6CWXnjsBlO5SMozeR42BDTmJUKCtLsQjz76FeOAjmo7/7HHejD
         8/oN1IHpcc+1vTkgoM6ABgaPoKv9e/yNZOPE203zjg/4Y1fmHxUrRmQ29yOsOXyWdUMe
         J0vUiZSDn45oEJ1CAZ1wr8YlSWbttMNi0J1pDcFgyhRMgu+3KWBfnpKHaS+RAdQA5qar
         EltQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532aMizGHurhjlgOMI6UNyhdKswvKiopw584OYWe5ATx6uoztUTL
	QGFqjpV4DARE/uJjb9gMtsg=
X-Google-Smtp-Source: ABdhPJybTJ0ArnYDNXu0azRxq0GRuCQYRCKl/g9/GgV0oiwwDNH2XwlbEpS1EmKixj5/cZLAq41eWg==
X-Received: by 2002:a25:d412:: with SMTP id m18mr19529770ybf.361.1607306129370;
        Sun, 06 Dec 2020 17:55:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:c45:: with SMTP id 66ls1941816ybm.1.gmail; Sun, 06 Dec
 2020 17:55:29 -0800 (PST)
X-Received: by 2002:a25:7e03:: with SMTP id z3mr19718900ybc.251.1607306128999;
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306128; cv=none;
        d=google.com; s=arc-20160816;
        b=SjIonTVeRG4l1LveBqBfxcAXJ4PgRe2ye/urQ3TKFSybqhO0IPGR9GOTNTgdbFl2au
         6hH+sxpaPmfFvvjzgoeyYYC/Kp0zOE3AAGnZ86w5cl6dei3EE0L4/hNUmWLC6aCuAfXL
         YsHIssIM+iXQuj1FXqHSIcrvKn3Rov14yNB4+v5kQysJT2PNulwVzBKBKnRQrsdHuyk1
         QRcdAT7vvF7gRuHu827wVFqD6OcknTdcWMcjDEpFC3lGUjGoHhETWKBWbFqogr93JMxR
         56H8Xc6jLFMVvuJHqAFlGfZZshy4ObOZczFU7/qdggDoWsV45wrU5BACA840Mq5egsxs
         aszA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=NpovWOJgPnPj0wfjqD2BVFUWhs1PrBr39rhtuh8mjKM=;
        b=PQfXJEOQHohZfebGLUle5ETDFXb6ldAVclyu8axnyoYwiJRaLgtO+BCMIwJxl5OLHE
         1EX7FCUhmkKCETa4xRdo49s9VN6Cq3E52SQt8BoHx3ghE3hyQHCEYgETCzpROMtTZFmK
         4uuiGFJz+VIJbinJVqN6h69uXNcjgdyPrzyuwceaZIvzI/3kw9JD4X1YwFSFSp0L43Nc
         GyOwFgXZYl6io+NR2HIiIxg/Xh4Glireb7I42C068i3a3qVUxu22cnrAfQ48MwnysJpd
         J0MwCxuds6+eZTmLib5vG5WgzHQ/x3HnQeLZ7Yy8hkm8YCc6Hh5oPpRMWJ9mTafskOWH
         hGvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id m3si1011063ybf.1.2020.12.06.17.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vs3LKPzkmDl;
	Mon,  7 Dec 2020 09:54:17 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:46 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 06/12] iscsi_net_util: Fix NULL pointer dereference in find_vlan_dev()
Date: Mon, 7 Dec 2020 09:54:04 +0800
Message-ID: <20201207015410.48488-7-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201207015410.48488-1-haowenchao@huawei.com>
References: <20201207015410.48488-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as
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

if_nameindex() returns NULL on error, if it returns NULL, we
just print the error info and return NULL.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 usr/iscsi_net_util.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/usr/iscsi_net_util.c b/usr/iscsi_net_util.c
index c38456f..10e6fa6 100644
--- a/usr/iscsi_net_util.c
+++ b/usr/iscsi_net_util.c
@@ -206,6 +206,12 @@ static char *find_vlan_dev(char *netdev, int vlan_id) {
 	}
 
 	ifni = if_nameindex();
+	if (!ifni) {
+		log_error("Failed to find netdev:%s", strerror(errno));
+		close(sockfd);
+		return NULL;
+	}
+
 	for (i = 0; ifni[i].if_index && ifni[i].if_name; i++) {
 		strlcpy(vlan_hwaddr.ifr_name, ifni[i].if_name, IFNAMSIZ);
 		ioctl(sockfd, SIOCGIFHWADDR, &vlan_hwaddr);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-7-haowenchao%40huawei.com.
