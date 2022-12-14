Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBG7N4WOAMGQE3JGHPBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C5364C440
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 08:09:18 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id n16-20020a056a000d5000b005764608bb24sf3611419pfv.12
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 23:09:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671001756; cv=pass;
        d=google.com; s=arc-20160816;
        b=u0MSCWbmH5RRPE2uZ0sS7xkUwhpUrOpTD3GMikR44G4bwSl0qGM4xvZrcxPhpSLttv
         et8ECujNlhcqF2mbCJpa3phpPwqyQ4aWBnZQNlJfXOHBumxIXjLjI2hnhy6UoOEzYG7+
         5KVJ/+hfLmHxBASybkrnESbC5uzXiSlEVE7LniG/yel39014ryVU7zXIhxnpFUsCN5kU
         KzctuAsl6i41F56GAzNRIPYy+CGahz06gfQSaI7rPv/xTEjShm3KGVoBiJG0ifWzyEuI
         ozkh7bitScYSfiMUiKxCh79dzQ3aqkhhDS9cdbCsmmRFdyuu3Uk+WmyNsPUpC4TIxEDv
         q32A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=FwKb+zmii3jXCsjCHU9tLd7of1SZCaomzUofyxtSMHM=;
        b=sQ+ZEB+1PYWTWDCd7DA+wnOYwUkfJ9hbDMcOfA44ZyGNVLg/3Dk+HpoK2CWDiZc1yE
         SWhDa0tAU0kGlgg8MzoDoz0HUelldFZx39BDfOUaUl6wTdAZNd2XcJVCsSND+yvJ/uIr
         1aKtf48kgZCLWu08GRaJseJlJgpc0Cu8yMPNbDXJkHhaaM67//gldPS5k8a4X/F/QZOO
         qstY+INzIrlugTieQl1d+PPKrzVdpHjisdjAivvV+2OcjbvzdPHDrA6VgwF6zo5LMzV8
         6c9Aj7pPfU6S52DFjIk1zp2srX2B9j25InuEd0sPKLPhGPGFZvV2CMrwwqobli4o6AFm
         idIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FwKb+zmii3jXCsjCHU9tLd7of1SZCaomzUofyxtSMHM=;
        b=O0q9nh1deK7nNtiMp+v6NL+AoAVRByTx6efPGfQpwoDDy0y2KByZbXrzKb8KhjMgDD
         635wX6mjvFmpg37maYhqfOc60bRfITJL3Y5Po2J/d3TRuLNAeNaRT9zqKohqKaPFosLd
         tLvLDlxheoBSmaa+IJT4Bdfpt/c/QNnri6PkaFJiQCwi5nlodY0nZfRbVGo6hpUNtfnN
         v0vAyAL96cbAn+6JMSATF0+PL4OyX0xAlXK+eh9lTicxpW1PcLEwesNPsMwxksh2nkgh
         A/Pnp99rXst1r32HEP1iEEv3SaEKiO7ybSJbGQzGIZmFoRJe8EK8nmqSOgIwKJwY97fp
         Dw0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FwKb+zmii3jXCsjCHU9tLd7of1SZCaomzUofyxtSMHM=;
        b=773v7AYfw8jd+UDIcK+8FRPK3cCZoRuSK5GXgPUqrHLGMRFuQjp7Ic65Yhtf1rtVBB
         3zc3KQsVQWNb2NjvhqwOglLh8KlD4ur+3Zfrntu+q0IISyCQRl7qMJmYQ7447acMHKyZ
         VqRUo1csBuWhr6XXEfiKW1vXcSIYPYWWY3s+PAszurHqFQP0hMaXUPN5JsfPPQHZCpen
         eh92Wmk1YSv52SKFaCtAAR4tW9wrlP+b7VIj526COiSI0JGD6OrtMkKicq++1ovjJpFg
         NQcgRJ8e0JoJeg2muyf6Jl/YMRrl2YZpLE20qp2/ALTAE9v/kWZcq3tDdM2jei6Ij/ox
         kJYg==
X-Gm-Message-State: AFqh2kqxgB4aaTwWZJOlJ+4bHKYQMppl9qNNI9unUSuSxXe2iVbolkx/
	Te0LX9aGPp69IjpiNfUFbXs=
X-Google-Smtp-Source: AMrXdXvulZ/oUHoOLi4CIRyYTgyzBVvhDDRmQ8Kgb1ODFEV4plG4tApsSMaa5qZrt4Id2LFYH40rXQ==
X-Received: by 2002:a17:90a:f292:b0:211:55d8:4cdd with SMTP id fs18-20020a17090af29200b0021155d84cddmr157833pjb.133.1671001756785;
        Tue, 13 Dec 2022 23:09:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:7b86:b0:188:62b8:814f with SMTP id
 w6-20020a1709027b8600b0018862b8814fls21442931pll.1.-pod-prod-gmail; Tue, 13
 Dec 2022 23:09:14 -0800 (PST)
X-Received: by 2002:a17:902:bf49:b0:189:e360:ce5 with SMTP id u9-20020a170902bf4900b00189e3600ce5mr23968591pls.12.1671001754758;
        Tue, 13 Dec 2022 23:09:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671001754; cv=none;
        d=google.com; s=arc-20160816;
        b=M1Ry0v1oQHWh/1rtaUUczctgla7ov80pUouTmvM92DsWqBllC1ctZTmROi2rOwMKPf
         qs9h8yPhn0KIf6mHYcCeAvg4tIY3SOt9xuk4pv1EdLIwpZhefAa18w7BjblKBvbCsCUn
         xLFLOpkcEFp9lZiODIKXGAg2OFeL321j1b+k7ALUar4Kti00zmw/W4yZbV5Ce67z4eYT
         9wlpNLnbWHkntZNHthyK54Kh7EIjgRuDYIkWi8Z3ungAi0UeiH4/tgttSNm/HBwvPJAJ
         T+N6nnCk/miq9yb2d602iywkUgALGWL8gQitVNPuf2xkh6bzTAo+ScYeYoPSGslYWrWc
         CX3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=6cnVG4aUD9h9ZXhr5zwZjLZmyQSP5RkgqBFjFuknPBE=;
        b=O/4y/6yc1jwikJ+ywjDm1aN0Q/LUmpUDgnyu6clYEJcZhYvY80X5XXnZO9K6xRI/zG
         W4++Pi6KObDIf5TOPPjkrYfis4Nt5u/so01kSAjdCCcQrWr66aVXVgLjKu5JVB+IxMNa
         9mgQTS6jU9hUmmLh1XDJfExbb9BYpLzrRENzzy0ovCnI4VqGS5z6Q8Fb0bd7ug//hDyS
         ULHKMKjOKCb1Kl4lKdNRqv4ZUXbDT/zh7GKzQNVzR7XG9FIVE0Fg0AHzvmvwD1wv7s5J
         Jd32BNQlt648u44aqX+CwzyObf3HqXPN1vJZx2YAabao3omLnS0KP2ofMkQteYhvhIlW
         vi2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id m3-20020a170902db0300b0018712ccd6e0si209076plx.2.2022.12.13.23.09.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 23:09:14 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500017.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NX5zw36R2zRq3H;
	Wed, 14 Dec 2022 15:08:12 +0800 (CST)
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 14 Dec 2022 15:09:12 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: "Martin K . Petersen" <martin.petersen@oracle.com>, Mike Christie
	<michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>, Chris Leech
	<cleech@redhat.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 2/2] scsi:iscsi_tcp:Do not skip lun inquiry returns PQ=1
Date: Wed, 14 Dec 2022 15:08:46 +0800
Message-ID: <20221214070846.1808300-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221214070846.1808300-1-haowenchao@huawei.com>
References: <20221214070846.1808300-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
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

When luns inquiry return PQ=1, do not skip this lun and try to
map these luns to an sg device.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 5fb1f364e815..316e2e17c72d 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -941,6 +941,7 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	shost->max_id = 0;
 	shost->max_channel = 0;
 	shost->max_cmd_len = SCSI_MAX_VARLEN_CDB_SIZE;
+	shost->no_skip_pq1 = 1;
 
 	rc = iscsi_host_get_max_scsi_cmds(shost, cmds_max);
 	if (rc < 0)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221214070846.1808300-3-haowenchao%40huawei.com.
