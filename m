Return-Path: <open-iscsi+bncBAABB76HYWEQMGQENMP62AA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 237CA3FF81C
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Sep 2021 01:53:37 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id h186-20020a3785c3000000b00425f37f792asf4603381qkd.22
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Sep 2021 16:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630626816; cv=pass;
        d=google.com; s=arc-20160816;
        b=pOf852DAaZb1a9SCeMooXbOm14ny0fBSipJtR59ny9mJtqWv2yQ/qRaMdLQmel4ycw
         gA9j7n7x+osgQ9lDBrFttGd+Bnakv3qsNKW6t0kahhesMxjlwJwGV7ZUaxcR0BbMa6b4
         xVLzBjp1Qyep5pdUSgj4B/GX75zuy5xdtKJgoQhEIJBoFuyg2uAjNGNnVvAssHfj3Ww3
         KOaghwMhe9azoci9/DibYTFCAuZrSjgyt8ByV9KS/fP+mUQCt083R9IIeAAtGgcr4D1B
         8Nxv3frQeZL/Q9EGyEqRGs1q9OMSD+hfA3rwhRYhuudOBTinc8SzpuZyHoV6IqOzsOXc
         /HCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=6ktthcX82+Y0gBZeHfyS3APxZgPtqArgCN01gZ0p0Zg=;
        b=a9slp4YIIriPAPNgs81oNsdeUdbsVzr8IpG5gp7HLNZlC6W5CPBXNt0MmBogaTCAEP
         tThHbWLAsohBRDKYtWGeoshIlfgNAg1Lql8wBpOX4QzYggzTji3j4FCqilrng16nlPkB
         BAngoirLq0WiUamVgwuwtYQIQ7+cI1ISHc5M4x+XcnDuHMaedG/0oTICdujgvEvk2sSP
         4mRslUA+88XXw5H6p+D3wFm4g+1funHUd6C0wVkAaMVuJVZ0lqsSGR1Q9bvOEoXYMvsR
         3pujBR8qbPbGXwuVFULXFQshFclwo3JuF9qV40nC12d3IlwPFhjpH14J+ToFmxIJLM83
         +KxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=libaokun1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6ktthcX82+Y0gBZeHfyS3APxZgPtqArgCN01gZ0p0Zg=;
        b=ZzfuQhRSdcKG0LPZL5XS/cLOUUuB/lI2TrIS5qmnxQmkLXALl6QlbOj0LWk0+/qPOq
         eyr3OfPgpN10m3Ickr936IHNBNGepwiw/rszkg3E1HcD9iVZKksayoOBcGkw7W2Wzvxw
         feQgyKe2dwCMYdY987IxF/XtqF4vTRsaeY17Arkydhn90B3rnyPx8wx7UG8rvVt4q2+8
         v7u/LzU62lUv/SJOhQssJb/s5P5RTHFtWjBD8RZWIzmi4051Oi6uUIrWRH2ocQDBk/ZT
         UbFM3zJRZMOL5IQaDuR7a7JaVF0tj6cZVqCPT+HMt9rf+PNfcRL34JzlUHjRLJ733N/x
         7wxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6ktthcX82+Y0gBZeHfyS3APxZgPtqArgCN01gZ0p0Zg=;
        b=UzMMh02GSuisK2vcCw86WoiEjcCNIII1X3aBURglL1AgLOvDoky/pmcpmDvjsFPG7G
         2aIkAOT7GlcNtZAqUip5kZJdkSsBKT8ZJVCstsISUUzk/JgXsal2n8eel0nr0+eib/MP
         4vIrGhFJNu+PEPBo9l7S3Q5V85nKsAGwIgjTqy8kNz+fOoW/ax8E3RTTODJGteu9D11T
         9GSXqO/XIRZmfqCSV36FbqBP4yeAKEsfczhFXkKfCNvTZrdglojQyfD+IP7QeIR/KqgR
         ycgfsK6y645nAOI4C67Wcg7XdeBiD15S43ifHKh8fhhuObgqgRkeqyJ4KgM5WuttHU7j
         0/qg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ftJcWMOydeWun12K9qlvbZ0X9p+DfZ6H+rpIM3ALb87JRbyMf
	nAM4r8g2nuhtBCkEhuAOeXs=
X-Google-Smtp-Source: ABdhPJw0wTeMq24FhghCtK2aStAHtjD+dmCGXP88LQrjhyw1vX2q2eXZWaDDq8FmQ8e8Atj6aYL7+A==
X-Received: by 2002:a05:6214:142f:: with SMTP id o15mr836092qvx.31.1630626815899;
        Thu, 02 Sep 2021 16:53:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:50c6:: with SMTP id e6ls1241042qvq.2.gmail; Thu, 02 Sep
 2021 16:53:35 -0700 (PDT)
X-Received: by 2002:a05:6214:23cc:: with SMTP id hr12mr918693qvb.56.1630626815642;
        Thu, 02 Sep 2021 16:53:35 -0700 (PDT)
Received: by 2002:a05:620a:84d:b0:3d3:8bc1:4756 with SMTP id af79cd13be357-42872bf49b0ms85a;
        Wed, 1 Sep 2021 01:43:27 -0700 (PDT)
X-Received: by 2002:a05:6122:d95:: with SMTP id bc21mr20493389vkb.23.1630485806696;
        Wed, 01 Sep 2021 01:43:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630485806; cv=none;
        d=google.com; s=arc-20160816;
        b=JHlwYuwcBmoOrrKSTvPlG78IURixhuY0I9XsuS6X3AAiyVuYiAgK9HkCWLmbTyKcmD
         OH7sYrBVnjXovyOKc4WmHP/1V3TduMIiC6Um7OHmHtc6XZ1SRswLCaAeh/UIVnsr0UeQ
         H8waKFrm1ORuPOaYGTxp1v7u6bfsaznFMaHKhT0wCW8PNtnIQspVTvuMV7JtA7X1bjN4
         X5ks3fvH2ICRE3nlZVdcZG4meMXqEbtdxh9mTwjtSR7iK3+yT+eQ2cGRBt3TakSBLL4h
         2yc7iJYyXXPEmqWb/8RDplvcGN8AMC5T2qS3Hmhz75tqRAKvJLWDlOU1sprzH6ZaoMbI
         4MPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=h9wwEvLCnhkI25JONjZYaYGQ1H/QGH2n3Om6LX53TFU=;
        b=HsuSlc6QSJ0Crd2J2kaKC+JzkWrAWu5mWw/aXnM/m5yYFo9o+7f5eXCsBFcCupjcW0
         T4NZWw2OYD1py/HVt+n0pKsO1+sOYA/2TkZNMrzr8KGJO5y2m2UMkjcrZ/b/PODS+//x
         7g3RpfKg3cUHaaGxS+2/STPFTlKGBr96O63mgyI1YLhueQSTEjZeJfOHOHh3vAJ0sKqj
         4FiZ3sYFFkPlt3W7GKkmMgjgaok+cNm/Z4gdKnnqfxb6gBVcb20/l2EU1Q1glS691RhZ
         U13btn+Gy0yBFi3iRpnKelleSAcnivkGtWJP7Sb9Fk94dg1Spqj7l8S2xdmLLpvskBl4
         RqJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=libaokun1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id t15si936813vsm.1.2021.09.01.01.43.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Sep 2021 01:43:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4GzyCh38chzbgJj;
	Wed,  1 Sep 2021 16:39:28 +0800 (CST)
Received: from dggpeml500020.china.huawei.com (7.185.36.88) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 1 Sep 2021 16:43:23 +0800
Received: from huawei.com (10.175.127.227) by dggpeml500020.china.huawei.com
 (7.185.36.88) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 1 Sep 2021
 16:43:23 +0800
From: Baokun Li <libaokun1@huawei.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <patchwork@huawei.com>, <libaokun1@huawei.com>, <yukuai3@huawei.com>
Subject: [PATCH -next] scsi: iscsi: Adjuest iface sysfs attr detection
Date: Wed, 1 Sep 2021 16:53:36 +0800
Message-ID: <20210901085336.2264295-1-libaokun1@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500020.china.huawei.com (7.185.36.88)
X-CFilter-Loop: Reflected
X-Original-Sender: libaokun1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of libaokun1@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=libaokun1@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

ISCSI_NET_PARAM_IFACE_ENABLE belongs to enum iscsi_net_param instead of
iscsi_iface_param=EF=BC=8Cso move it to ISCSI_NET_PARAM. Otherwise, when we=
 call
into the driver we might not match and return that we don't want attr
visible in sysfs. Found in code review.

Fixes: e746f3451ec7 ("scsi: iscsi: Fix iface sysfs attr detection")
Signed-off-by: Baokun Li <libaokun1@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transp=
ort_iscsi.c
index d8b05d8b5470..58027207f08d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -441,9 +441,7 @@ static umode_t iscsi_iface_attr_is_visible(struct kobje=
ct *kobj,
 	struct iscsi_transport *t =3D iface->transport;
 	int param =3D -1;
=20
-	if (attr =3D=3D &dev_attr_iface_enabled.attr)
-		param =3D ISCSI_NET_PARAM_IFACE_ENABLE;
-	else if (attr =3D=3D &dev_attr_iface_def_taskmgmt_tmo.attr)
+	if (attr =3D=3D &dev_attr_iface_def_taskmgmt_tmo.attr)
 		param =3D ISCSI_IFACE_PARAM_DEF_TASKMGMT_TMO;
 	else if (attr =3D=3D &dev_attr_iface_header_digest.attr)
 		param =3D ISCSI_IFACE_PARAM_HDRDGST_EN;
@@ -483,7 +481,9 @@ static umode_t iscsi_iface_attr_is_visible(struct kobje=
ct *kobj,
 	if (param !=3D -1)
 		return t->attr_is_visible(ISCSI_IFACE_PARAM, param);
=20
-	if (attr =3D=3D &dev_attr_iface_vlan_id.attr)
+	if (attr =3D=3D &dev_attr_iface_enabled.attr)
+		param =3D ISCSI_NET_PARAM_IFACE_ENABLE;
+	else if (attr =3D=3D &dev_attr_iface_vlan_id.attr)
 		param =3D ISCSI_NET_PARAM_VLAN_ID;
 	else if (attr =3D=3D &dev_attr_iface_vlan_priority.attr)
 		param =3D ISCSI_NET_PARAM_VLAN_PRIORITY;
--=20
2.31.1

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/20210901085336.2264295-1-libaokun1%40huawei.com.
