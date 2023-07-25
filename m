Return-Path: <open-iscsi+bncBAABBFPV76SQMGQE5MAOSHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3c.google.com (mail-oa1-x3c.google.com [IPv6:2001:4860:4864:20::3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 96145761EB3
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 18:38:48 +0200 (CEST)
Received: by mail-oa1-x3c.google.com with SMTP id 586e51a60fabf-1bb8e028beesf2271163fac.3
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Jul 2023 09:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1690303127; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bjujvsk0y05xlpfu1uUQDETKsjUbUMatWpfUZghztCM8rlSQ5E0/6067kEpiJ15PyN
         J/jb+gJbG5X8NI1579TJQ1fUWEfVZCGeRQBi1WS4V/iLJGVcoCiEnF9w5Nu08+6mbdNU
         tGV7puUiXiLi5Gxv9HjIDoa3Gkt/ht0YFqWRVOn7KGQLwY3gRCcdBr/kGoVd5pRkbjTt
         SvXccH5qFYGmtyMad296l8gUXz3M75qTPy8J5et0WW4btvmm08yorlP2HfLZETZ3znbn
         5XybDX/uLjVfpqxGmqBzF7nGCWqtCX47ilrtvMWqFSYT3YKwNsVVke80uqGFpIQN4azH
         IHxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=CoBS6YgJCmE2Ahr87+WbvsaAs3+8JB97l+9rx2ltG5k=;
        fh=nya2RMvejbE6n4IJx5qWTwo1bK9FWOrMOuIfl7Oiv9E=;
        b=gOyGV0ENVd1l/dBTx61UWg7870xPStcN+5n77guyOsGpu6snR83gswkSGvQBY8FKE1
         pL0fcjoFveonI2al/D1oV2UqAmiCY2WuEakL0JubDfF//iiaiQYS9O4NVAjm9nVqgk0T
         W1+qk0/zCfDQP4y38NIulfk8KuHKCv38YrcPHouZrTLkJ5guJHOovtzaa+yfVrI5nxz9
         I7PFl4nE4eoUtMYeRsgRLRPlrJGRmme7EYjMqL16z/dO0Ltg+3vQI8LnVPJ3tpjBJgHm
         6HJwSHkeizWOKWGzjnVYqaaOortHm4OsRmZp5dQhaYz8/Fx6eyOQAv01aKuw0IcHOQ+m
         7mog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yuehaibing@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=yuehaibing@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1690303127; x=1690907927;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CoBS6YgJCmE2Ahr87+WbvsaAs3+8JB97l+9rx2ltG5k=;
        b=eKgnrhjKTip5+Ir+Y++cSHoVhThBmdS+STUOZhD5QqwxaOtsh3ir0pWh9FVmp8X5KN
         yHA6AUfaoylWmOrQb9p8Ehu9BUmccETbwxfLaGftzh2ag3V5e7fxXq74inPVCoRvwYFN
         awJIPcz7P3VzLKbQvfAE1YF4MgWX04ilNGIjX1RkwpRmVnt3CIRi6uHhezUJbxmty91M
         N/u+wuFIJ51aeiupvgkJruarqK078B/bT9pIPlttzxTrdHIDd8L3ybqtquNXyd6WOOra
         X+twbzkoc8s6HqL9DAlJUiTVRZpXiJsUvDb579Wy+t8JhndzX/RH69IwJP7UkZTEfrh2
         rE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690303127; x=1690907927;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CoBS6YgJCmE2Ahr87+WbvsaAs3+8JB97l+9rx2ltG5k=;
        b=LBdjq0eZJ/thxS/NrSb5F+3wwlyClcb1A0dvoADLgMOHof/fO0RpCGLXdvzm/5SWUo
         TgSZmWjXmQDA6DvVmCfznFhrHAlKPC2B3waTuhHH2urUGfvhOIXsO5S9Ojb6PL5JciJU
         cIDvZJ6QgK5JYCFN0ruvknC8IgJw122i/kvUK61mM0em0DKU5YU225y/52H8O8sFuRiL
         6HP0guWvJzFj5tRjKmIxu8f2DGvrnr/Zb37kzMnqn05SfHBpIz5UsSpohNRCAFq1LJhd
         W2zYap581rcph0HbTcZsSE96sjW7NcEWZAmDJ6gpA7Y0l9jeHCnTIdGaVS0eGA+yQZOV
         +dqA==
X-Gm-Message-State: ABy/qLaAoMnwDOfnVx5799dT1k7gF4004fNFBusy/NjzOiuiSu3JOkKo
	RZPNXy62/8AlWlhlOWL8DE8=
X-Google-Smtp-Source: APBJJlGwl4/RRZZoUMMOaDfHhhPBVfGxoHpAgC198UhkLdRM3ILPjZKFIbH/mrYg73I4jpW4thCm+w==
X-Received: by 2002:a05:6871:29b:b0:1b3:f010:87c2 with SMTP id i27-20020a056871029b00b001b3f01087c2mr14982382oae.30.1690303127019;
        Tue, 25 Jul 2023 09:38:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:170e:b0:1aa:1314:488f with SMTP id
 h14-20020a056870170e00b001aa1314488fls287292oae.0.-pod-prod-00-us; Tue, 25
 Jul 2023 09:38:45 -0700 (PDT)
X-Received: by 2002:a05:6830:3a0a:b0:6b9:2c07:8849 with SMTP id di10-20020a0568303a0a00b006b92c078849mr4221588otb.0.1690303125685;
        Tue, 25 Jul 2023 09:38:45 -0700 (PDT)
Received: by 2002:a05:6808:114e:b0:3a3:5e72:c801 with SMTP id 5614622812f47-3a596308f3emsb6e;
        Tue, 25 Jul 2023 07:15:41 -0700 (PDT)
X-Received: by 2002:a05:6871:5ce:b0:1b7:27fd:cfff with SMTP id v14-20020a05687105ce00b001b727fdcfffmr15008096oan.21.1690294540500;
        Tue, 25 Jul 2023 07:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1690294540; cv=none;
        d=google.com; s=arc-20160816;
        b=Zav38ldOBeVsjsdUUPH1Yy15QW1sxeNGebF4bKU3CB3z/30CYn/telSTfQ3thsBBDK
         Ut2G5o/iCRn8ttuD0dGeGz8sxW0yNEQF2cDxUxv46ejVtuUrQETVqkF+QSBSLzX4FzHM
         d5ekNX3I9g+JGodiGB8GLST5bAOVIg9A+j5HxxEHox2Xtuv/OyTkvxp01FDTiZbSmykD
         IF1lvmQZZZNDIpSwJrrL2rWCk0ojuyMImNqS7/ty8gaR/81bAnrCsD4md7hdE5w53QrL
         V0T3cYB22NL/cvqA7ocsVGFFFNUUONJnAQLKif/acTXaApVl9J7b32catgA1M6gzlgHd
         1CpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=8bCjTOJ+QHU8C+ls37gysCMKcBwyOGNCRvrfVuyiM2E=;
        fh=SiWq8fVTjruF4fizG+K/iRzYqD7/BcFY3W836TLkxkY=;
        b=fl9gec3R1tT8Kf7b4kNY3obwbQDhrmdSpao4D851jJ944GdnTtIV4bSt0rV72gjwT4
         s+Kl1Oxq9m1pemX1SJBGeAf2tA3wePLZ5pL+HVHD7FUhBaMeK9dGjtHrr6//r3gzqTcC
         ULT9tUbnMCvqT4FTObhuHPSjIrclcj2vV0GCgnssEN1JcL0zTsgZpb/NDgUpQ4FAuHWm
         T8zCE7pyS8vm3HrSFa9iVvQUFMDavJH68EAQOsoyiZK2kGRADO3Pfx7f8PV5NJRMVOTW
         csv9Qe0NuHl+S4EEflYxsmG8ULBPb2clPspd/Ic/SH63BYS9G4Vd43qnSZMK5oYcS0B0
         CaVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuehaibing@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=yuehaibing@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id mt10-20020a0568706b0a00b001bb2231a1a0si595781oab.0.2023.07.25.07.15.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Jul 2023 07:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of yuehaibing@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.55])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4R9JvB2F3fz1GDJD;
	Tue, 25 Jul 2023 22:14:46 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 25 Jul
 2023 22:15:37 +0800
From: "'YueHaibing' via open-iscsi" <open-iscsi@googlegroups.com>
To: <lduncan@suse.com>, <cleech@redhat.com>, <michael.christie@oracle.com>,
	<jejb@linux.ibm.com>, <martin.petersen@oracle.com>, <haowenchao@huawei.com>,
	<yuehaibing@huawei.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH -next] scsi: iscsi: Remove unused extern declaration iscsi_lookup_iface()
Date: Tue, 25 Jul 2023 22:15:31 +0800
Message-ID: <20230725141531.10424-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-Original-Sender: yuehaibing@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yuehaibing@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=yuehaibing@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: YueHaibing <yuehaibing@huawei.com>
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

This is not used anymore, so can be removed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 include/scsi/scsi_transport_iscsi.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 34c03707fb6e..fb3399e4cd29 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -472,7 +472,6 @@ extern struct iscsi_iface *iscsi_create_iface(struct Scsi_Host *shost,
 					      uint32_t iface_type,
 					      uint32_t iface_num, int dd_size);
 extern void iscsi_destroy_iface(struct iscsi_iface *iface);
-extern struct iscsi_iface *iscsi_lookup_iface(int handle);
 extern char *iscsi_get_port_speed_name(struct Scsi_Host *shost);
 extern char *iscsi_get_port_state_name(struct Scsi_Host *shost);
 extern int iscsi_is_session_dev(const struct device *dev);
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230725141531.10424-1-yuehaibing%40huawei.com.
