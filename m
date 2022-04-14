Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYEI3OJAMGQE6UKM5PY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EE44FF6EF
	for <lists+open-iscsi@lfdr.de>; Wed, 13 Apr 2022 14:38:58 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id j15-20020a4a888f000000b00321764d8f14sf992930ooa.14
        for <lists+open-iscsi@lfdr.de>; Wed, 13 Apr 2022 05:38:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649853537; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBp+m7ybgbcRLl+GENtudV0XuZO/S9ce7U1gHfuXKIY6l8Rk3ceRLLnJfm8n1QNFzt
         s+wtvVDq+p9RyCzrmxJr+L87RpAIPYM61vY+zS14oG5um4ITx/W5wpJ3FTrcwIQ2Uixu
         ajPJVytQhlsGKrc0m+7Vq6W3YFccQ3f2IfMCNKQjwEa4mx993/+byil3/j7JAzBTpgsl
         Y4PZ7gEb1fa2G0HrWEnPbfYDTk83CKsUWLt8yMwoQGG1Y0ibl4nvScNZw+i5biDTZxai
         GH8nksuWVrLHRlf+BCgD/6CkYw8fJkWBlUsFlQVWtV0KN1Z3rbi+e8RQdQc8hwlc3f37
         aH3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=9MM0tuqITsN4HEQ1VCTDo2Kt7xprJbwIlfKx5k0+EhM=;
        b=zOnD/pgF4fJXOWII2HQ1hxqvhDOh8HgpPvspm1zaYdjLF6vR89y4at/e4E6EzrugAR
         i/RPH/yH6/eLEOj6ip2oQnbV0l4FevEn7ATuSR4WS/Kjf+RP9EVJNSSmGoyyISQNRjKI
         eQ2xudc8cZylw9J+nXZepFa1xD2d+z6CeGlzdo3wGVe/40Kl+34u1oLoze5i/MPh0q7e
         YwD68UeqofybC56MWfkkREFHAh7T16z9afI28ucR2lj5/M4kfKSEy8tAqtvZoCnswq5X
         MuqLFuVylW03Dr7nbAgHbKgWSFxRrv/2RPZH2+usuW0qImI7AKJuPWhTMzgmktRMWh2+
         MAhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9MM0tuqITsN4HEQ1VCTDo2Kt7xprJbwIlfKx5k0+EhM=;
        b=lMqQWxLspxOk2DlP5oqu6R+p0XSFznNPw9s4lAxos8cQo1qYLeL1AxEcdCuriMW4TE
         OD/Zba0Iw0ROZfm4l+XVSt7xXRbMCyAZkh3ZLteJfBFSW8HuxgX7IT85qOlUmzQdIZB+
         QryclDy8cZDWWOAqEYe21dCo8eNyAA7MCQe/YXe9x0MiLuflhPYpdPJllblQns0i9DyS
         17i2hFTL3aN4EfdLx5ufj3XaZbEAjEilm81SuFd1ucNjCLa3V0IsTaKmpiiRmUAIwcfd
         z7WTaDb6EE7PtdX1EnnekMxJe7tYcFMLnPKzeq0q44HGm3SJtfZzmA9RezV5nMd6HEg4
         VQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9MM0tuqITsN4HEQ1VCTDo2Kt7xprJbwIlfKx5k0+EhM=;
        b=43FLeTyr0bi1/xxw+R0xrai75SKYUHQ8oTPoQ/rOilAWw2TrR1oaTSXUBjX+fZZXKF
         e+WuDlrw7EazISUDv6JKE/XBgzLA2qrUl4fU7LYwH1wNXMrYKJiiM1/YI2rhhlDlxgbC
         PTO8b54yZRpoa0x4iOP2gfZ5K/+XLfu1L7HgIpUg9oj6VaGivS7fVSfE9VsTSmxtj9cl
         m4kic71jKTdlBV99HEdF5Y8x/q8TfZwgsy/Gh3oEmDYLZuN+BbwU/WeZNdkXNvAWu6uW
         6V9NdbhnFiLoSegxPXDoqb1op/UOLMcsEZKc68CmpUGDOXniT2rng5bD/XsKJh2FW9/5
         pmAg==
X-Gm-Message-State: AOAM530/XpJHq1r3fK7rFxE47Wn5PTgITFTO4hBvMAN27e7XNmLgcn7E
	KCfc0AZLCct5pr934tyUg6w=
X-Google-Smtp-Source: ABdhPJx91uArSrIBJqg3SVmuVPwqHl5TkqDhBLqym3s7CjTH2x9XV6HNPaeFVDbz+t4xsxHmTY+jvg==
X-Received: by 2002:a05:6808:ec5:b0:2f7:4019:53be with SMTP id q5-20020a0568080ec500b002f7401953bemr3922338oiv.176.1649853537173;
        Wed, 13 Apr 2022 05:38:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1d85:b0:5b2:310d:b9cd with SMTP id
 y5-20020a0568301d8500b005b2310db9cdls628106oti.3.gmail; Wed, 13 Apr 2022
 05:38:55 -0700 (PDT)
X-Received: by 2002:a9d:6393:0:b0:5b2:3ff9:d1c1 with SMTP id w19-20020a9d6393000000b005b23ff9d1c1mr14391053otk.243.1649853535907;
        Wed, 13 Apr 2022 05:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649853535; cv=none;
        d=google.com; s=arc-20160816;
        b=NKqsVtR5sV+W/xRYA40lnZtbkCAWBDGM9KAPk3JE6YB49pGT36B8sokEznT/IBi+di
         /G+6VYZGGRJGIWrnmiMk1NU0NwpWE1942XQ5VDqyQNEs4m5Xd24OpNEqjC/p4g/hKlrA
         DzZ2g0dVEQSGXakPHDvh/1X9WEhiQpTmD8Ex2j1zueeeWAfBlUn6S0hOYPwwpC2SD6op
         ujoKpe7LplJ6lYyKekG1J3if0CEogmFaxyMx14V4AsKFz6SDWH2PTdQkzikQCna/w0BF
         Wcbt9hmx+zcalChDFCK6z5xJr24Us3SQVMoC3DJ3t4SlPGUfgASIp1P2KtD/REGoQgBf
         Y3xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=NhuvGZ+udJfD7m5SFW7O1wNizRDPun2eSavtWfBRpTk=;
        b=ZHN9Lt1aVavee2wyqW0i7d3m27Oe5TWKVIwhxXPdCIk2opTL8Nc+lY8s43vXQVriVo
         ZI6LN98VXP5e1i/UIaMoTLib5naXdvfBvmJRSCzo54/nIz8hBccbRLE1Pnt8eAEor2t6
         VBCAY3UwHwuLqyqWBMAL5CqILfnUs53orhAzDX7hHERkxD9RxMV0w3aBTS4iGxE21jWx
         6EG63XvbkObCNoaO6W5UKH1np8ZntzcyZYHmgjsUJ/McOskCKleGKccoiixkaHX8Aw7m
         bnYaqpMbcAcuhHCsZD4xyLN0dnmBsIC51hiGkPeHXdWnqgXvDF9/Io+3ARB7jtidVd6M
         HaaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id bq9-20020a05680823c900b002da82b0660dsi2139690oib.1.2022.04.13.05.38.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Apr 2022 05:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Kdhsm2FKqzFpfj;
	Wed, 13 Apr 2022 20:36:28 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 13 Apr 2022 20:38:53 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Wed, 13 Apr
 2022 20:38:52 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 0/2] Fix multiple iscsi session unbind event sent to userspace
Date: Wed, 13 Apr 2022 21:49:45 -0400
Message-ID: <20220414014947.4168447-1-haowenchao@huawei.com>
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

kernel would send ISCSI_KEVENT_UNBIND_SESSION twice to userspace, for
open-iscsi, this would trigger iscsi_stop twice. We should fix this issue.

Here introduced a new session state ISCSI_SESSION_UNBOUND to address it.
Once session state is ISCSI_KEVENT_UNBIND_SESSION, it means
__iscsi_unbind_session() has been called for this session and do not need
to execute any more.

Reference:https://github.com/open-iscsi/open-iscsi/issues/338

Wenchao Hao (2):
  scsi: iscsi: introduce session UNBOUND state to avoid multiple unbind
    event
  iscsi: set session to FREE state after unbind session in remove
    session

 drivers/scsi/scsi_transport_iscsi.c | 45 +++++++++++++++++++++--------
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 34 insertions(+), 12 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220414014947.4168447-1-haowenchao%40huawei.com.
