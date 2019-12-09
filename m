Return-Path: <open-iscsi+bncBCD6VAET5QHRBFGVW7XQKGQE4KCYWVQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CEC1166F6
	for <lists+open-iscsi@lfdr.de>; Mon,  9 Dec 2019 07:32:53 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id j14sf10376186qtr.10
        for <lists+open-iscsi@lfdr.de>; Sun, 08 Dec 2019 22:32:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575873172; cv=pass;
        d=google.com; s=arc-20160816;
        b=cN/riY74S9/nDU6nebDubBQD6fHbhbWjf/AOyZ4iPrfRZpmtKi6olAeNaqF0xELJVk
         UD4MehDxL9L+zuNHViw5Ip2AnbsXkaRJAfiH/F4s6JLPLHvP+uJYXpFZjdZbBew9s3UQ
         JeytGzrOvFkL5dSPyOLnim2qcvzrW2UQ4HU2jf6trU5NmAaNElEySI7eutTQfT8yBup5
         LmvVFtZRorNn9Djkil5wmH1QnpkN03OqAeMbWAjYvgrvS1IgQ2qvhHTZfZTN+ucH9zjW
         yQ18CZEYKNE2NfPcw4ghBnBYXemZ7sg0s8qUtrkH6P6v6CfiMmNHD8GrWpKB4hdd4j1H
         5uNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :mime-version:user-agent:date:message-id:subject:from:cc:to:sender
         :dkim-signature;
        bh=Xr5ETosocdMmKVTWXdeRbdB1D/joltAzQ/eANdpHghQ=;
        b=JI/fDOAegZx94w5+CxY4xoavShLJGFbvpmpxslJvEedVn98TgooPIpyUC0tW/0UcU5
         CJopEinyVGmIa5x3QKHGu47BUFBzSPrlLlZjlX1C850oeQUXUjO4NF9PzNjnwrqW0acv
         H/2eyfN2bVusu2PEuXEp/D0PXAOdn6/A7ZLUT5cB8Q9CD6Sw0WegMJd7XayIH3M3TqB+
         ACOBV9BTKQnQbuFlxj6BKMteTMI+mGpFxDn6s6dLmu0Nut8ffX6cTO1fA2sSlQP1676O
         mEAp7WR6ELy2YuexQnjZRD1BVkJNnMX3/XGv/Ng0kVO1ddHgzypUb5zg9pV8znDVcAXa
         9qpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Xr5ETosocdMmKVTWXdeRbdB1D/joltAzQ/eANdpHghQ=;
        b=bIfdLLbYdqTTmFu2bjSzZf7ia9w1T89XySkLf9dhlAVenoyEg/WTNE3ko22iS7R6yc
         pugl2JR2CPcvdmcAQ6nqd2PBS3dVOQke3KcRukaO2cG4Ylh79Ou3HOZwRfnNTwkAODSR
         27N0G7fO0SxKi+tIGOk65egjUPQmWT/Hgc6kTmPdv+OlcEVPIS3wGdv2xJ5+uTKLE+T7
         Hj6wchJasx6k0XuvkiJCdLG5U8ZiUuyV2kC7x3TS/LadR06kGyUZHSRWjSnsfWSxdoJs
         m8Y03G6T1jWjdrQ850nK2JeQL5SlKTQ6aOjYuHm5vJHhkdkc//z20od5X7RkmN5dQCDZ
         DTaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xr5ETosocdMmKVTWXdeRbdB1D/joltAzQ/eANdpHghQ=;
        b=rvg6vchUPhkHjpNZ8rinKsic16ShzydaDm+s7gvbFLPsS8jL5n10/KddLQiQA79RjS
         Z792xso3mmYdkLbM56t5DFyOeWSau4nR+vahlUoe1VUMOkxvGbxIndkwU9BkB+vGubar
         84C15gHiPJmy1kuKI6EGZlzQwLF6dclPVINEhUd7Yr/TqoTXu1EjN9LLzgtHnQGTTVWX
         MdXRaWgbOBNrSs7viIWYZVhRzAhMppLeSjgF++aLR1c1IcwMyxPa6hcoo19V3h5u4CNb
         aPrtnmD9c5RMOPde3xBSFHZYQ3OcCkWOM2SxmmY2oi2DUrcGPPAg7/C4634wSJJaolSh
         RS5g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWHiuBNtQnbPryCfnSVD4zkLKz1JbKptxUNKXMfx6HXM230+bjk
	9g9rEfikilLdC1jmKgA4rVc=
X-Google-Smtp-Source: APXvYqzi1RtxESb2KjNCcEdKX893WI4NBCFja+IpgBZOL+BU1o57hyw18docKM9CeFjZMLWfpSgD8g==
X-Received: by 2002:ac8:19f8:: with SMTP id s53mr24429516qtk.29.1575873172507;
        Sun, 08 Dec 2019 22:32:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:478c:: with SMTP id k12ls3696445qtq.3.gmail; Sun, 08 Dec
 2019 22:32:52 -0800 (PST)
X-Received: by 2002:ac8:5346:: with SMTP id d6mr24199566qto.49.1575873172190;
        Sun, 08 Dec 2019 22:32:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575873172; cv=none;
        d=google.com; s=arc-20160816;
        b=c3Ms3qf2sNaFTuHUY/OTErpOhDBuDHfgyUm9xrBuJLYe87Q84SHeV2Mm68JwTkoBsy
         cxA7KKmSCIUTktryx7jXTs05BTWHngmMLLKir9jWnT5fAM6I0WWt6MKAFSO6K7L/hZN/
         II5Y0uwsdlVUyZBuZK55uOKvTehFKPurHO+4uJ38dRorc+JqzwR8eg99VJweKeMe2xx9
         YwbAGhRoq/pMZz58dQE+2Ude2S8z8wM9K1tA6dbTGCFJ7m+4ECwy5K1gyd2UnC2NskBn
         vji88Z1KkalOMq31q/yGYMwwl2IM9XX47pWehoLRMYCAMmUxHtOSVPkfxd+Li5O19X21
         xz7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to;
        bh=IzaDEx6qjEBwEV/pSVaHQkbWiPYkboExoNaykg9d5D8=;
        b=uD/HHd38YfN0xS1dhdF78Mg3o54gdhD5M8OoNshPiTswlOUXAaDaC9S/WWFzxTiiX+
         mZigo+jI7LI6zTEysp47UMYj9ya7IR7yh+NqCc50+7rbHpkRO+jtbl/NQk5qZr8yJ7ON
         x5BX7/AnLzSG/WxauRmkRUWvtUVXRhAq8sSt4O9S6mXuMqYm8lJYFNQ55KrfPZ9ygmN1
         2eKrfyDWfzz31n6dPcUqc2lav9Uw/c6PxJwMfa+RIY0PUlnKxvMOkpLB6qglxLIStt4k
         8SqhDZUlmO/lYsBUZlJve4HnTTZxQ0m2TgiMw5b66OB0TQnAboiyLIhJNqR+r4BHAmF9
         YcAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id l9si1046223qkg.5.2019.12.08.22.32.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Dec 2019 22:32:52 -0800 (PST)
Received-SPF: pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 85E17C45226196876106;
	Mon,  9 Dec 2019 14:32:49 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.183) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Mon, 9 Dec 2019
 14:32:39 +0800
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"cleech@redhat.com" <cleech@redhat.com>, <hare@suse.de>,
	<eddie.wai@broadcom.com>
CC: Mingfangsen <mingfangsen@huawei.com>, <guiyao@huawei.com>, "wubo (T)"
	<wubo40@huawei.com>
From: "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
Subject: [PATCH] Check whether socket is opened successfully in find_vlan_dev
 func
Message-ID: <7c543bff-009b-5a96-2e66-e75d5b3c7336@huawei.com>
Date: Mon, 9 Dec 2019 14:32:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.173.220.183]
X-CFilter-Loop: Reflected
X-Original-Sender: liuzhiqiang26@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
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

In find_vlan_dev func, socket should be checked before used.

Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
---
 usr/iscsi_net_util.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/usr/iscsi_net_util.c b/usr/iscsi_net_util.c
index b5a910f..c38456f 100644
--- a/usr/iscsi_net_util.c
+++ b/usr/iscsi_net_util.c
@@ -192,6 +192,10 @@ static char *find_vlan_dev(char *netdev, int vlan_id) {
 	int sockfd, i, rc;

 	sockfd = socket(AF_INET, SOCK_DGRAM, 0);
+	if (sockfd < 0) {
+		log_error("Could not open socket for ioctl.");
+		return NULL;
+	}

 	strlcpy(if_hwaddr.ifr_name, netdev, IFNAMSIZ);
 	ioctl(sockfd, SIOCGIFHWADDR, &if_hwaddr);
-- 
2.24.0.windows.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7c543bff-009b-5a96-2e66-e75d5b3c7336%40huawei.com.
