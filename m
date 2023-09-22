Return-Path: <open-iscsi+bncBAABBQODW2UAMGQEWZ5NRDY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DD46B7AB363
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:35 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id 006d021491bc7-57b2fa97912sf2839108eaf.1
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392194; cv=pass;
        d=google.com; s=arc-20160816;
        b=hDv+Fpv0el0CIwrZY6n3p985r6JKrJF5mO5k/B5qtxtfoVvBM8f9Ys78GH8RquT01O
         58pKpTV9N5BkLaTKCSqLizz3W1+MEsACQ6/Ol18trwk2T615owupy18UvNJRfgnTxk1p
         5pW/8e+VtGk9/4R1ZgxcjOerZcgiI3Vk/m2hjgcCbjVCxt4b4+MhcBsUu6sHU2es3TQo
         fZgBwfsQaJS0RbLRP223EdBKZ6kwE1Vruz45KI4ifOy9752W1nFBUCZk0emWSeb1UOro
         4A33KM/ZJaP0lo28RZrL/0cehMP4uJf9ZAv/eZn+rm6dzS6/ijjeRG4oqOt5ct78DclM
         CWBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Owl4ioqb8aoNMGnd7lTMkTUC3Q2Og9Q+s/haZZ7LdUc=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=OAWEy339TA8oRajdadkiGpLyCP27sE98vjyGf35sqK+vxT91B+ukZiqWA3H995PQEa
         JfjvNqHI0E8OJ11RtwAu071PdNdQzdvwc9G4kPlNeeynEPpKt/tTsxaSzb7wbMyLhKWu
         mP4A4ZVJm0YSKZnFLDL/CfKQv1OOOMH33S/bSfkgYX7t03Hullw8BCtpOhhNf4n/k7WD
         3V7PGARQWA0XADHDumDvtqnJwLQNUksofM6HkeKCURUfwZNXJIz+ktFY41VeHvZpyfQ+
         +al5ctrtcl54tGi4p60UjoDk9sce7DOsCmXHR2TEn1pIjxLpFN7d3Sm8BVvRR7mLuR27
         cE/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392194; x=1695996994; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Owl4ioqb8aoNMGnd7lTMkTUC3Q2Og9Q+s/haZZ7LdUc=;
        b=j+oyKe65Xgxp0m/JP9zw7IVgV8+KwvwFegBCWHEXtgOS/gGw1F7FdgIjGO6Raf+cWV
         EHnQYqXBVWF8Pp1OIEr9U7n3k0FBYxPlCzeUUD0Mi0V8Sb888T3RTsfBM51SgTQZWUDY
         FZBP6Uu/n1iPzOLgziF3Yz06MmNAN+VcglojQEWqpQO8ARAoSrpGGdPdsR1y6aIGtwSz
         94yqBtbYNdRvtlOczakps+ZIAUy2p/4NiFHQBhnzu2Zdp56rJsKZinmBqMdtZnqPtlGe
         PkKMCIGbYSwfFmZuUOXDdKj42cbKN9XtXd7kqwnEA1gaNxlXxr2xSgFvDtEAPuaGPGW8
         QEmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392194; x=1695996994;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Owl4ioqb8aoNMGnd7lTMkTUC3Q2Og9Q+s/haZZ7LdUc=;
        b=H2NLKG/2pG3adcj3Rp34HefEZ32n4JjnJZTl4eX1wfMX7o31fAg3t9OHWRHGs613wA
         awaF2ZDkE/2vTiAKUlBkNfxPxAIcCHQ0zURtsqLD324rqvmAYJUmx9nld0Si4eu2M/q1
         s1DMpoOlsjL004sSKmc8tCXpUT9eddUUXoFex7ArZU7NiS5pBQbAEBz/2Boa+TwTEAjd
         QKVzLHzCcKaxqdWvxM89NT29tXJvoYrXNGwwhdEajLTD9JggtYqZ+BhCROet4wgkljO1
         9oUFpoqvqjTABXyEoB0+ZgwVCkxHCeDUOISJVViORWfi5tFCQRjSeIK0C6WKTHkgfIsm
         tJWQ==
X-Gm-Message-State: AOJu0YyY2fuwJmnuMrb0BRazQbI38YuAlgMRAttDyOet3hB2jkDeWV3f
	jkH+srZU2nQvcGO3LMi7aic=
X-Google-Smtp-Source: AGHT+IGhnwdUwJmNdyY4ZZpjEBExrP++qi89y5EYaZfaVFi0SM3mrWfb3gySp248b/RnD7li4XuAvQ==
X-Received: by 2002:a05:6870:b296:b0:1b0:18e8:9536 with SMTP id c22-20020a056870b29600b001b018e89536mr9690618oao.52.1695392194654;
        Fri, 22 Sep 2023 07:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:218b:b0:1bb:b22e:a027 with SMTP id
 l11-20020a056870218b00b001bbb22ea027ls540670oae.2.-pod-prod-05-us; Fri, 22
 Sep 2023 07:16:33 -0700 (PDT)
X-Received: by 2002:a05:6870:98a6:b0:1c0:e7d3:3b2d with SMTP id eg38-20020a05687098a600b001c0e7d33b2dmr3485362oab.7.1695392193588;
        Fri, 22 Sep 2023 07:16:33 -0700 (PDT)
Received: by 2002:a05:6808:11c3:b0:3a8:7920:a17f with SMTP id 5614622812f47-3adeec4b398msb6e;
        Fri, 22 Sep 2023 02:39:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:1c83:b0:350:f0bb:6a42 with SMTP id w3-20020a056e021c8300b00350f0bb6a42mr10320252ill.29.1695375548049;
        Fri, 22 Sep 2023 02:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375548; cv=none;
        d=google.com; s=arc-20160816;
        b=0luORYgHxuCAjhBzEytdup9wVQRHTvXn/qCJ8nAAYId/8LE/FxnDe38HBQW7odEneT
         pf7qhs/Y6E7Y2EiPjnik45ZfgnhTsoHUBteS280ae3nlHG3/1dcYvk+SG19mGTbPkbB9
         cC20gq2ohBE8/Hwswr5reiII4JsH8kYB2oxzE9z6Rv0IHRyMwlv+4qTFD2aT6UboYlrf
         OuZH3aSBtkVCvDQyXq1vnaAYRr5FEmGb1reLE2+c6uRQbcwE/9jYhQm/ZYLSNAztcCUG
         oBf4r3hznys3KhPjnwlWrolVp3x20S6MzSVdX4lbVXLsGfA2XFS6SmMeqeET/R6F2dGB
         /aZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=SV1dKjXJVHVLTGMHWl7MuiyLrjcYFbGIit4PlM+qDZM=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=tIcOKZuwYrQy3TuhtnVpi2zW5nin/FPClJ+wNe4Y8Z1+mq/fZyseENiYiqLmalli8N
         aZlYoJLt14cG0Wqd7ojlEcuUcZrt773J1Oo1xvjL6dKt/FCcF0XZninHNas8ZbyWpLSX
         0iOVCtIyQvvJB18lF2EkJxLw+XsNtf7q0q8CFP7XFtYejQIA9xhYhSwnkDJVXdU1K0lV
         i3cCocU/IHZM8wO3A0Vco4bB90QCo3hGdgWg3BiGid46o+Lph7nA90H6rEVeJJ7GUSro
         0yJrynDqClo9SbZMNEoO/NRtWB25vuf7j4xuDy0AvC5k4LWFhsZ5WfqeoOuaYGhNYvs5
         MRKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id q12-20020a92ca4c000000b00350fd9a47f9si525708ilo.5.2023.09.22.02.39.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RsRtw6W6sztS8N;
	Fri, 22 Sep 2023 17:34:48 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:39:04 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH 0/2] cleanup patch
Date: Fri, 22 Sep 2023 17:38:40 +0800
Message-ID: <20230922093842.2646157-1-haowenchao2@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemm000012.china.huawei.com (7.193.23.142)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao2@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=haowenchao2@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao2@huawei.com>
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

This is a cleanup patchset, no logic changed.

The first patch just cleanup scsi_dev_queue_ready();
The second patch add comment for target_destroy callback of
scsi_host_template to tell it is called in atomic context.

Wenchao Hao (2):
  scsi: core: cleanup scsi_dev_queue_ready()
  scsi: Add comment of target_destroy in scsi_host_template

 drivers/scsi/scsi_lib.c  | 35 ++++++++++++++++++-----------------
 include/scsi/scsi_host.h |  3 +++
 2 files changed, 21 insertions(+), 17 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922093842.2646157-1-haowenchao2%40huawei.com.
