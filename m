Return-Path: <open-iscsi+bncBAABBNWDW2UAMGQEFM5K7PA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C827AB35D
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 16:16:24 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id 006d021491bc7-57b74fbbd6esf1727096eaf.0
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 07:16:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695392183; cv=pass;
        d=google.com; s=arc-20160816;
        b=OGEBmmnMuw17TOJafmKsgeDQmH3AHFtzxSLUSRc6trjfuaV0HnHSfwF9GjQlK46+ZX
         fUTGasKQ5DfHipMHQ+K13F7Rd/rQSDQLo46hhe9h/Nzzu8L647FD/RRh+nkOYnQVfu5C
         fveRXftBhtnK1TpjdxJSlxUgJKiHFYr1kEN38vje2B7u3zYu2Ot2WMEI5KjpBg75gS+0
         IMgGe4DUBsluWbvKIvgA/D+iIZYLtOhpjpEMXF1Kem3tdctzwUoYL3mX+wI0jEcmfB2K
         nV8efMh0ezkWYe+9zJLkMAOew9vD9YFHYv2YiQDthrTtpEeCcWrARsTYLG4zSv9Hhca9
         s7jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=7BxOj5B2PAZkjGfx1KIKGXA7LrmvEaJrbJbj6S7IhCM=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=Dscj2V8TS/6ueoAeht8EINKM8L8cviqsN7fPiyB5UsgfGRUC5ceLb4C3GQTlNU/VVi
         DKjfEgxm5YA5oB1ITRLBWmLRWuGLComY0s9BQvSvo1B6tifG/pvYaRxe0CYuEdlFKyvx
         nuMzlSbR8gYiei6069DcPGo8EKmcFd1N5n6DPMuF4rYJhjp/d5iVRbFL4C173wYrEwWG
         yeCoZw1Yzhjq0zUc4vpMbHsmeB1Wem803zCTashY2SsCDrX4SkMdapyRtuxzpc+EtBke
         6A+J6VUVeaEvNwAwjLqN3EeY5Z8K89pZ8ujhEaQm0i25UDnXQoMdZDny4EjbsR/H6kp2
         +eFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695392183; x=1695996983; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7BxOj5B2PAZkjGfx1KIKGXA7LrmvEaJrbJbj6S7IhCM=;
        b=i8dTF/aW0+z+xZZhj0t42kCic5CETN/jiN+T5rvvB7fVrSunHR2nr//bMQXR4Viunp
         ggH2J5aZ0KWHQLppftZ33Y5cbGqGu/iR8Mk47UPKe6RKio+xDHanGjPdEvonq0F1wPYK
         MuWZtAbawFPiv9IyzuVjM33o9oganMP+xRyevQWBvcvwnSpx50s+fMf67lT1ZhntCugc
         n+3ij5fMOIacT2B/hRTyJ8WbeR1gL/Hsg5PvTk/UnJMfUUkr9sR9W45egNoqSiYz1KQi
         4kKmd7AdIUPm6TE1dy1oYTeJ6UzXqIsuXprF52JrxwfxQszEkSdRNHEkerXliskxazhL
         78iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695392183; x=1695996983;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7BxOj5B2PAZkjGfx1KIKGXA7LrmvEaJrbJbj6S7IhCM=;
        b=FIJhyplq+rBx3DR6CS9vcP/jWZ0CBZX7e9ddUIaWhX19UxleVMylxF4DUNVlHwUm0F
         EllvK5SutT4IOLH00jmTeo74Rp7VK4ohEY1O/8PfXvszq/FhJGREH+hGucgiK9dOtOeu
         4qdw+loc8/4s0uwyxpuvbxFCGmejvQOhB/BxpxOsf3sP4HkRHadhHVa2Slr80Npay6IJ
         QrtBNlod0kuJfSdFXC1yqWUgwEZkQAgEUBP4wkgJvzJx8+NMkC0vqst8zW/4pl581KyH
         vfrj6Lxs9ThES4aMFYcbn4JdDdAu+aHOAdIl8Nb0F97lGD3WtxWZdU0BsYoBQml9ORGO
         JFqg==
X-Gm-Message-State: AOJu0YwLPdh1tSAE9kz3FN8ADH9TjUFVBTiIPwGwPgX1Bb1z6eF3HZdc
	9561Yw1UBk3faWCitHybov8=
X-Google-Smtp-Source: AGHT+IGtF3kjFazOlEVhcBysEvdeMWRJxA3NiA+fh8yMK9unhWkSvaNd+GMcDHJMAnfMwzXJUoCKYg==
X-Received: by 2002:a4a:6204:0:b0:57b:3e9a:49ac with SMTP id x4-20020a4a6204000000b0057b3e9a49acmr1714393ooc.0.1695392183302;
        Fri, 22 Sep 2023 07:16:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:d9d1:0:b0:57b:5e7c:4b12 with SMTP id l17-20020a4ad9d1000000b0057b5e7c4b12ls1473834oou.1.-pod-prod-08-us;
 Fri, 22 Sep 2023 07:16:22 -0700 (PDT)
X-Received: by 2002:a05:6808:188d:b0:3ae:21ca:9b74 with SMTP id bi13-20020a056808188d00b003ae21ca9b74mr497415oib.1.1695392182052;
        Fri, 22 Sep 2023 07:16:22 -0700 (PDT)
Received: by 2002:a05:6808:1910:b0:3a8:4c6f:5bc7 with SMTP id 5614622812f47-3adeec243a9msb6e;
        Fri, 22 Sep 2023 02:37:30 -0700 (PDT)
X-Received: by 2002:a05:6870:6594:b0:1c8:c9ca:7092 with SMTP id fp20-20020a056870659400b001c8c9ca7092mr1428265oab.11.1695375450408;
        Fri, 22 Sep 2023 02:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375450; cv=none;
        d=google.com; s=arc-20160816;
        b=jbf1kl2cWn5hJJnaR8oX97aH9Inf69zoM9HZfmyEPfdj9ej/05HJPb+dSmPBwtaezM
         y+tzvSTMfdnJ6dellGVLh11PE9oOFTtUWLOOAhGwVlaDH8TLvgD6HDqxZdRk70lvGgJH
         tbHJw/Nxtt5A3VrB3ypsBPuUlvbHBx9xvd1Ze6JPUzRHT7Qt0f30bTyaB4RFe0uzvMih
         YE5uhPMMM0kqs24dbyJfdjAd8pFy4Olji+hHGGTDiiXe6hjm95ObD8X3HXm94OlbnkeW
         5eoMDQD6ckoffSJHLK8FhvUWGKvGbyWYj6aEiSvIBF1P3tQIeY31QlmcNtbD9ewvxCOO
         vOOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Ul98dWChgbGXAeuKeTz/JCCJM6QD53jMy6Tpds+GJZg=;
        fh=czI/RuS43lIcejQG7heSpqlilKbUywFjC/3GVjzlias=;
        b=Xc7PbyxWkHFyx20+neEQigOiBSlh0MsywT1kNU4iE+nxmWWBjwSZEIq5epG0ZACwbK
         89un4/OcRh1xiutEgVcJdVPu5zLB52weMrZyAHkfPeE11EFz7cj+d8vUIv/P5esuRcKm
         1CYREIj1/Dy9aUKvKEbCAgnhrXSS6oauKOIcnKRvR5cCeqh7KtTj+6Wlsx88Y3So0meU
         tvjqq6yl8r403giiKJx3zuC3d5yh5ng4Ms4CXQbVefgIO2FksyyxKxed69IRdhHWZmHM
         T0zzDtR3rVlgNtuer9AvUkLpkSZg6Y0shEDh3pM93p07MuxMR06FmETnZ9un9gry6T4O
         o6Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao2@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id pn24-20020a0568704d1800b001c52be8d92bsi501249oab.3.2023.09.22.02.37.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2023 02:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao2@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from kwepemm000012.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RsRtx0WslzrRtM;
	Fri, 22 Sep 2023 17:34:49 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 kwepemm000012.china.huawei.com (7.193.23.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 22 Sep 2023 17:36:57 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <louhongxiang@huawei.com>, Wenchao Hao
	<haowenchao2@huawei.com>
Subject: [PATCH 0/2] Fix two issue between removing device and error handle
Date: Fri, 22 Sep 2023 17:36:34 +0800
Message-ID: <20230922093636.2645961-1-haowenchao2@huawei.com>
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

I am testing SCSI error handle with my previous scsi_debug error
injection patches, and found two issue when removing device and
error handler happened together.

The first patch fix IO hang because scsi_eh_flush_done_q() would
retry command if the device is in SDEV_CANCEL state;

The second patch fix the issue which device's eh_device_reset_handler
not called in recovery when device is in removing progress.

Wenchao Hao (2):
  scsi: core: scsi_device_online() return false if state is SDEV_CANCEL
  scsi: scsi_error: Fix device reset is not triggered

 drivers/infiniband/ulp/srp/ib_srp.c         |  2 +-
 drivers/message/fusion/mptctl.c             |  6 ++--
 drivers/message/fusion/mptsas.c             |  8 ++---
 drivers/message/fusion/mptspi.c             |  6 ++--
 drivers/s390/scsi/zfcp_fsf.c                |  4 +--
 drivers/s390/scsi/zfcp_scsi.c               |  2 +-
 drivers/scsi/arm/acornscsi.c                |  2 +-
 drivers/scsi/arm/fas216.c                   |  4 +--
 drivers/scsi/bfa/bfad_im.c                  |  4 +--
 drivers/scsi/ibmvscsi/ibmvfc.c              |  2 +-
 drivers/scsi/lpfc/lpfc_scsi.c               |  4 +--
 drivers/scsi/megaraid/megaraid_sas_base.c   |  2 +-
 drivers/scsi/megaraid/megaraid_sas_fusion.c |  2 +-
 drivers/scsi/mpt3sas/mpt3sas_ctl.c          |  4 +--
 drivers/scsi/mpt3sas/mpt3sas_scsih.c        | 16 ++++-----
 drivers/scsi/myrb.c                         |  2 +-
 drivers/scsi/myrs.c                         |  2 +-
 drivers/scsi/scsi.c                         | 37 ++++++++++++---------
 drivers/scsi/scsi_debug.c                   |  2 +-
 drivers/scsi/scsi_error.c                   | 12 +++----
 drivers/scsi/scsi_lib.c                     |  6 ++--
 drivers/scsi/scsi_scan.c                    |  2 +-
 drivers/scsi/scsi_transport_srp.c           |  2 +-
 drivers/scsi/ses.c                          |  2 +-
 drivers/scsi/storvsc_drv.c                  |  2 +-
 drivers/scsi/virtio_scsi.c                  |  2 +-
 drivers/ufs/core/ufshcd.c                   |  4 +--
 include/scsi/scsi_device.h                  | 15 ++++++---
 28 files changed, 85 insertions(+), 73 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230922093636.2645961-1-haowenchao2%40huawei.com.
