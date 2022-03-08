Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBJXBS6IQMGQENP6LC2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 607C04CFD51
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Mar 2022 12:46:48 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id z2-20020a05683010c200b005afb5ca92besf12787266oto.9
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Mar 2022 03:46:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646653607; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7cPkEm5GqLupdHSRbcQl/izlUTxY26W/dMXlmI7YzSVgfDipEt3SBes3VEbbQ1Dbn
         MfG6VgaxP1dOg5UqDNxcVr9LSl2ePtmFnuIlMglt3KXHYT5zdLELguK8dLZjXwDSZjJA
         vqLlfz/+qVF03GRpKVfBL8qsRJEuEgaUXlqjBGx9w5wUHPAImjlkEReegRSLXdQtmbsG
         ZqeexVzYwPrCe10ATO+SQDaTjY83wZ7SmuFAVNZ3bBH/iN4QWh1KppohsueIHq1fmel3
         7VG3T9k3PnKWG5LFFoM+PgEK6x2QKEQhCmC/9gUo74vnOUA69JnUOYLAdDde0v0BRuv1
         LXTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=C2eVah6wXswrqHaIxnUs33HlUI6+4ib7gP2lZcTEM/g=;
        b=D1PMw9Ku3AjOaDBJ8nJ1qbltWNE0mCa2bpI1KGNxGovF4fDahTr+dprX1JA6yq0jlX
         ex0phEPB041SRTXAOJx7A9P090zYINGTqf0B9w0I3Gaqnn3trdzl/M/fgu+c2hFklIAZ
         Fcd4bqAbWlcdWA5PMZIMu5R/H6yyaz5j6DakpHBiOgEKXgk2easw8zPupdKsT/QfNAGs
         oyiYW2GXLInMjF6olet/CaN+ghXjI1PE7k/yOwWlN6QWuyfO1lz5VHCSc/sbV5bFsc6C
         kkcwsHQlfC40Ur7Nqxvd3kF8A6lxmVz1h58GN+70XlUKQEDRnsOWAWGz+exUbLUYiJt5
         ydNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=C2eVah6wXswrqHaIxnUs33HlUI6+4ib7gP2lZcTEM/g=;
        b=esZIdD2/PuzIKDCNTVqZhR5QkDOV2TcKg32fA+ODQbckmYW7HhDVyQYy7t3D1S7nT9
         wnWvzGSWnR63nAth3Yue6DC3w0U69zAaRVE8JgrELWNS0JaBpUgP/d3OBFR7dikFTpZH
         OuVXid1El2yRTUdgw4UFXPzOQONVAA+Fmqbfq6EIb7CQVbYnhEncl4B8f8lMB3sZctj5
         jRkdXUbEVzATJuBDTrKaiHXbzxIHMHKvkzScwe0d7dY1FQagY3EHUyxt+H6L+ZnsHfzJ
         LvkFacPTxmzq0AbETEELUaONHZsfxfvO4O5PNmKsCVmPzdBTCH2DCim/jO0SAAfv2rM5
         uZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C2eVah6wXswrqHaIxnUs33HlUI6+4ib7gP2lZcTEM/g=;
        b=8IeGQQKLUFVe1M/zfvUYH+GZTTJU1GU9OKzJhcC4CSoWvPoNqZe0MzsGWUcqnEGESH
         OE3XveuNN/CbSyfroz3zkma8G7DLn6z+sUBvyrqiLI3psqN7tzycJeoa1PaXXLuNMWt5
         M3casqdURB9FV4RsQ6xu5p4V+xMcb/zYacKgaGB9NdqqGnL1LkzhDdtdjQY9cXbOKocL
         CExGO1BtnPjwxq2vu9Zx1E5ouKCFCUfB+CyQWtvqOBVa8ksiV79g33V525MYgFK/ZqXj
         NwJUKez01IJFtQ3CNU/gT5tHrmq17tNBj2vnI0AQ3s4exOwH1SArvWtgYyef7wAYOYUu
         nJVg==
X-Gm-Message-State: AOAM530B6EO1QhPT04thUfpnbwm6T06MdjMjawBYNvhfeMfvW48Y8iJj
	tSbBAnNm8T66hNrIdbGqWbM=
X-Google-Smtp-Source: ABdhPJzixLxFZ+fRw3431mBxpzLQGfXECjYO3pG22QJ2YzORUy/eEMwBpzhwbMUto4AUx2L/7N5KkQ==
X-Received: by 2002:a05:6808:230e:b0:2d7:70e1:b820 with SMTP id bn14-20020a056808230e00b002d770e1b820mr17478469oib.40.1646653607346;
        Mon, 07 Mar 2022 03:46:47 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:6017:b0:d7:2052:ce63 with SMTP id
 t23-20020a056870601700b000d72052ce63ls4033990oaa.5.gmail; Mon, 07 Mar 2022
 03:46:46 -0800 (PST)
X-Received: by 2002:a05:6870:96a9:b0:da:225e:a5f3 with SMTP id o41-20020a05687096a900b000da225ea5f3mr4673089oaq.27.1646653605929;
        Mon, 07 Mar 2022 03:46:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646653605; cv=none;
        d=google.com; s=arc-20160816;
        b=qNMBc0uF9e5p+NlZ7waRug9MFOcSIeEZ6gzY3aI3XUom8wLeJdiDkWHKuBg2fwo/ZM
         7+gx+HH59Akaz1OnR2Qt7jr5Kn6pyFBM0VOQKfn4prk5JPR+ZQOXic1vHr1YlwF+zTg/
         8BOiv6ipcLgEqAwmIsfO9odEp9KZzMzNQ4UHVny4l9nxY5t2PYDqgbip5LmII1t+TPlZ
         OmCO4Qb8Dx4/VmDyAjvySnTBwT776hss8Al+qg63/opqowb4Xh85Bkg/ulsOOkkxicwU
         roe1uCE9ke3rzduUFA4CHeL+LmqJx8JhM9ZcrrNMY99PlzWnnVu2/Y4xU8EAy1dD7PYi
         lRaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=hIn3GPS8jTKYMQ355Kq0Ny023LKN8FCtQkrSLzRUME4=;
        b=sGva1hLp7K12ZtkPf6881/O1JyMDNdZxnDjSYss6AgjfosJIffXFavTaGoUxvbXkQG
         +PMC3SN5J8uEiP9GfNYmCR9h6l7ZuhXCyeDPJ0Jy9Rxq7A0WZREzmhXT7Iwoynu5Klbl
         O/6l/qZm0MftW3iiLNxp9vylnkhCOnYWBC1089z9uW3BGo3bWwMcR4vMTFTlrVGiwZD5
         V2wBmtQsAAHmBhmnookYLswoCZ1PsWbUmcBynBCc1JH350Bg1gNe8QSjB5ZS2m9nAa5p
         sRwikfsWCsp4kqnpWmBeePSM4NkeD+6XmWTyL0VlajTgWBaIP1XZMUo59d6vjd6dtlnF
         AIlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id e184-20020acab5c1000000b002cf48b6b783si1625586oif.1.2022.03.07.03.46.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 03:46:45 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KBxSg4X4PzBrd0;
	Mon,  7 Mar 2022 19:44:19 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 19:46:13 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Mon, 7 Mar
 2022 19:46:12 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 0/2]scsi:libiscsi: Add iscsi_cls_conn device to sysfs correctly
Date: Mon, 7 Mar 2022 19:56:52 -0500
Message-ID: <20220308005654.2281343-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

We found a NULL pointer dereference in iscsi_sw_tcp_conn_get_param(),
the root reason is we did sysfs addition wrong.

iscsi_create_conn() expose iscsi_cls_conn to sysfs while the related
resources are not initialized. So we should delay the calling of
device_add() until these resources has been initialized.

This patchset solve this issue by changing iscsi_conn_setup() and works 
well for iscsi_tcp.

Wenchao Hao (2):
  scsi: iscsi: Add helper functions to alloc and add iscsi_cls_conn
  scsi:libiscsi: Add iscsi_cls_conn to sysfs after been initialized

 drivers/scsi/libiscsi.c             | 13 ++++-
 drivers/scsi/scsi_transport_iscsi.c | 85 +++++++++++++++++++++++------
 include/scsi/scsi_transport_iscsi.h |  3 +
 3 files changed, 83 insertions(+), 18 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220308005654.2281343-1-haowenchao%40huawei.com.
