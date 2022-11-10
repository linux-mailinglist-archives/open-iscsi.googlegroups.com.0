Return-Path: <open-iscsi+bncBAABBNOE2SNQMGQEGJU22NY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF9E62C6BB
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 18:47:35 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id s14-20020a05622a1a8e00b00397eacd9c1asf13711300qtc.21
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Nov 2022 09:47:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668620854; cv=pass;
        d=google.com; s=arc-20160816;
        b=hKvZ1JU759xhVSiodVJE7YfytsrGaScbbhUCYXZsL4wjeOk5/AbZEWj20N8fWhsH1p
         V8X9OOnteQ+jENYYMPoPJdP3m4gSrAZ6mwDoJUfpvy46JKVux5WUXI5Io/NONNLCiIZ9
         uT/LOL0S424OXKJP+GkrQoFrQFnuxbIfOaPrkInyX8mhGIOCGlBHy7z3jGffnk4ke6vz
         HhJ8JUz1M1sGLzNr9DGECdNgEmLgQNQjG9RkOtPPi6friRTBL6w7dDHHVNhM45c8Tp/a
         TrQS+lt+VpC97HPhR0HkfOczuZkUn6w448tP4TYxX/nEvwhg0Kp0VgjXLHjOZ/4rHfKu
         +16w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=ShlxjonX4UU2hTK41WbP9jimHpd8T8cQGu402RD9kKc=;
        b=vvWD8zxL87x9iU0QDCbpIkpQ7pSga/rJVz9wr5V+4fwo7+kN9+9Odec8R60h5qZ7Sc
         ZICPRcfwCLTwaftn7TFTzyLtff/Yh0NoszXOfdXUizAkcRHP5mgVVDaJGG7XK1MxkFaX
         4g6jbBfjbmfcrUvs6eLYX2KOtTunzCH6aMRJDH7hzm/6arGjsLP1JXh1YOs2iy6O3YML
         qwal7qrYXq1pqKXGvW+9J1RZYTwpd17Xxg6FGL74dg8MHYw/ZeMpXmTwAXzuhDuTL8FV
         nVmiIcKk4+qiiw6s3Mr/hhtABEVtHPLvpWQhtzFIO+VKMmpt0YsVFeZZdVOLFiiw5nvX
         pTvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ShlxjonX4UU2hTK41WbP9jimHpd8T8cQGu402RD9kKc=;
        b=JI2ZMsSMz/RsWtaAk/hNoHyzRg4XpwVt8HQeWfXPitnBS54Ddh6p4GeLMikXIxGM7H
         aiEDctDerFZzR0cyIz2PlqF6UsdOj1lREwyCOK0HAW5opPmFHUgtdo1oC05cn2XY8J7A
         Rab5/WiQ25dS3rRc/mGxfV6NOlKTO4Lke5eePA4pDc92J70g9XBnffEQHTbr3zyiXDxD
         0EKIS8C4TuI60wYOnHpQLN5qN+DVRx2ZnPXg774cG8CRpcphSfj3GfSqwI620ebhUSD1
         oAgrlu/Y+lTAd0+upoG5YHQVX7NzId0qA4yno+7TLLAOkDXujbvXKIkISFGFEbVmClJ6
         aQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ShlxjonX4UU2hTK41WbP9jimHpd8T8cQGu402RD9kKc=;
        b=Ido3G1mQqnt9XcieKJ91dIQPt9mc1BnZPUTgwQOobs7GNh/dImMHbOgovHKiyAbD/m
         DltgbYhijf0+SlUUEVCWdcRcHuzqnGjrbYg2xW+xL8BFnH2v7tjukU7rsStYry6lReCd
         dMhK+qeugQhB0Y0BRiMnQoqU5NyP2VwYV3uEHSVtoMHhRJMZu9jt1IIF7wh0b6t+Ab2t
         JBxr1sw4iVKWo/i7qWzIPJKoASjXQ/OdKW518FJHasU1jNU7FetW+u7BsoqsHO+uqeWE
         7RNlt/DW/DSV53lrEWQVhwW9UXN4hidwbViW5vAaDHyxMdf3RVUsuJY7qpV7507KStoJ
         ufiw==
X-Gm-Message-State: ANoB5pmQNQXfb10hpzAq6xvBgwQybLm+nPkLzdWaF9ovYc5YVeKdVOIE
	xJQD8Fy9fQKBiJvVehOsw6o=
X-Google-Smtp-Source: AA0mqf7DR89e+z0yLViEDvuqoJH6vwp4svvKlF+XKw3V2PqhxS0tJJF7W0UX50fiKY9yLIhob7DTug==
X-Received: by 2002:a05:620a:349:b0:6fa:1f01:4b9f with SMTP id t9-20020a05620a034900b006fa1f014b9fmr20085630qkm.548.1668620854562;
        Wed, 16 Nov 2022 09:47:34 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:382:b0:6fa:b07:9e97 with SMTP id
 q2-20020a05620a038200b006fa0b079e97ls11799663qkm.7.-pod-prod-gmail; Wed, 16
 Nov 2022 09:47:33 -0800 (PST)
X-Received: by 2002:a05:620a:110d:b0:6ee:bbea:1ebb with SMTP id o13-20020a05620a110d00b006eebbea1ebbmr20803439qkk.638.1668620853296;
        Wed, 16 Nov 2022 09:47:33 -0800 (PST)
Received: by 2002:a05:620a:448a:b0:6a6:b240:ff45 with SMTP id af79cd13be357-6fb1b21a9ddms85a;
        Thu, 10 Nov 2022 02:24:37 -0800 (PST)
X-Received: by 2002:a05:6214:21a8:b0:4bc:5c9:30a9 with SMTP id t8-20020a05621421a800b004bc05c930a9mr50169368qvc.79.1668075876862;
        Thu, 10 Nov 2022 02:24:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668075876; cv=none;
        d=google.com; s=arc-20160816;
        b=mrUBiitRki5dbE5vaYEZO7u4YhkWKiCgzzxddKoIJ0QpvmqXMxKWVNBzfCo/ei8gFe
         IKadUpM3PGLOdTFPjRiPoJ7kFfZ+BWJOkFNNwOzn6qT7jwSyVtC3ewxh/MVwcKjVq6/5
         /Lx4eYeV0FJw7PIKC07pL8UaD9Ea0R3p2dHiW38PUd0z9ZqyueASfFVDrXxeWdxgbRT4
         0xqVsuCyo0wybjwxZNeDQpJHWoPHWaY7W3le2re5bAG341LLjzOPpxvwSKraGv+xWfaQ
         V2evsmoHZMD66Otu+ibWtwrKELAiEDShuT1zoXH6W+AAJLefbQI/8w/AUCOEeACLsbKy
         MCcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=KJFAYdBHgMgENF8/CyT7phwpwzj9GbIYE9WJDCG9gdc=;
        b=Pp3icToCUObf86mVdU8NDUpq/kkh5si5gREimKYrVwL5TOXWc8XmmCf8vv3xXv/u4q
         LRZUO6WNmQh9czKdbz/wWEncfxHWrRgIkEq+e9zv9SXiphXMG4tTVf7YH7oGjqxeKe7q
         ykTDxgQoEXVTGNdZO2GjxAK/G7VFlEV4ZVhU0yGLJosPsgFLEN8EL45NELDa3/Li88A3
         DYmCJf5Wsu7myFimMG51689w5QmGtf0FFwZWszIb0YVj6kZpGk6U1wWPGqB7fbVYmph0
         oeqaFjTh2/oaMOQxklkDJhqVeUg2vFm1I6UBIzn2fP90TKpO5mzWeN3DRHt1ez0B/jU/
         Jp3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=yangyingliang@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id y12-20020ac87c8c000000b003a50aea46d7si784867qtv.3.2022.11.10.02.24.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Nov 2022 02:24:36 -0800 (PST)
Received-SPF: pass (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4N7Hsv63zFzpSsn;
	Thu, 10 Nov 2022 18:20:51 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 18:24:33 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 10 Nov
 2022 18:24:32 +0800
From: "'Yang Yingliang' via open-iscsi" <open-iscsi@googlegroups.com>
To: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>,
	<gregkh@linuxfoundation.org>, <rafael@kernel.org>, <yangyingliang@huawei.com>
Subject: [PATCH v2] drivers: base: transport_class: fix possible memory leak
Date: Thu, 10 Nov 2022 18:23:07 +0800
Message-ID: <20221110102307.3492557-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Original-Sender: yangyingliang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangyingliang@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=yangyingliang@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Yang Yingliang <yangyingliang@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Current some drivers(like iscsi) call transport_register_device()
failed, they don't call transport_destroy_device() to release the
memory allocated in transport_setup_device(), because they don't
know what was done, it should be internal thing to release the
resource in register function. So fix this leak by calling destroy
function inside register function.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
v1 -> v2:
  fix code style.
---
 include/linux/transport_class.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/linux/transport_class.h b/include/linux/transport_class.h
index 63076fb835e3..2efc271a96fa 100644
--- a/include/linux/transport_class.h
+++ b/include/linux/transport_class.h
@@ -70,8 +70,14 @@ void transport_destroy_device(struct device *);
 static inline int
 transport_register_device(struct device *dev)
 {
+	int ret;
+
 	transport_setup_device(dev);
-	return transport_add_device(dev);
+	ret = transport_add_device(dev);
+	if (ret)
+		transport_destroy_device(dev);
+
+	return ret;
 }
 
 static inline void
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221110102307.3492557-1-yangyingliang%40huawei.com.
