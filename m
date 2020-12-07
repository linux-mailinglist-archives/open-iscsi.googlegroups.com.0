Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBDEXW37AKGQEQ7ATPMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2516A2D08F8
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Dec 2020 02:55:26 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id t8sf8075920pfl.17
        for <lists+open-iscsi@lfdr.de>; Sun, 06 Dec 2020 17:55:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607306125; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1n1Cs0Gbt2yKAY+yZ0wGHJ0BdRE/xUtS/Ng3rfiA9W1PjJukMSnDYucf0oY9WF7uI
         o8eqncTDDoVK2BvFU3i3+RZ8BwzR5VLDSyuwjva2aHvZEwYqi1dMIdonYFDeO/sT9/St
         tLxRgEouQQOdLCmW/7bz/X7wc/5XcfHYMfrveZU+/Gip6BSCDW5aN1qzRi6dm+H4XYgI
         /9fbVAPzIXJeRb1cuDSNauIBHQ9nBA431tpCjymftXrivx0LNLSOnNx5xnAaxpTSinJ/
         cDPV25/Is4umeXbT2tW2dMuz5ex+YCShHeiMmx0v1rBWeWAP/rQbe67bJ+cC5fqDHfHy
         zLzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=nbQDQrEmuFTFF0sOxd/xAEOxJwGUUXbeeSQ4cislGPs=;
        b=uRIPoVbW4hZ8kGdavfn3KFnki0/2CsgbYb/nlior6vZIUbl7QSOmyq31KnWhHmyKcS
         I2zhFwHQ5NaYAA30XzrymDt46EPZ2LRWBc/7Y1O1Y2aBn3J5ScvaXfvfPf+Q3GhH2tHX
         g5fgkZFzdODQ7p7TY584vdf/AGHenHpkzWpkV6uwRrQpgEZyUXQi4EBFErqyx3sKuZnL
         Z1iamjgaU/JShnytGL5uKXc3UjxTNehQVM2MWoY5iD84uarLxX6/UVvK3D44AWfW74Pq
         IGz1kKGR37bJj3bpWQYf9gA67LlwcPg/oOZBV214VkJnyQKekwoXMjh+56z95gQxiRQd
         pe9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nbQDQrEmuFTFF0sOxd/xAEOxJwGUUXbeeSQ4cislGPs=;
        b=o1fOTnqfLR5KhrQ1F/jmXVcLEit/yKaHsfRuO5MSQRRP4bJ8uEBxLHhwzP0xHJ/MI/
         K4izGiq4v2sA9e8QPFYfa2fOu536/RE12SXAisOVUeh/tFEEkByBGjx1+9M+pa50XTqm
         vexM1Kdp6i0MWQj1Oli0IeBf4nZbXiC7q0k/n2VxeRINBEzJk2+/ivXgRJbPRiCzsSxS
         2ookdFle0d0w6y+M9TCsT9dzqJ/Yi5sKmDM9GhJzD9QG1yXV/79CeRbjDzAtFBOdhtgi
         1gaX8dR6/Sd/UZudfJ7tIn2ISDlpU1HRJqVKoYPaYXHvjSYtP6kdWCkAy9gQaP243Xhh
         3ctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nbQDQrEmuFTFF0sOxd/xAEOxJwGUUXbeeSQ4cislGPs=;
        b=UxHOSyuMSQ3GzAv3PnnuTy6DRktLiaJU36DuZxMBx4xsellN7GBUilecCrvlCzJjoy
         5v2sz6pWXTDu7udEdP+GVogyq/L3mH94On2pANSjitQwyq3Gao9C43dI3KT/qwE0jE4b
         0Zp/nX/VqFEkx1kZn9nnFofszonZddYeVmpMA7Y+Qbq9JkiHK5TIq/F/cOkNuKqPmVZC
         TsXjRLNrSYVZPrB4ah8cx+JA0Do+gVUg6MZ/X0tDTGC3wwMtqRfoK0EOKkv2oUoYJhfK
         Cft+qtouCboCepsAlEiUzwSH5KD9XKgVAiLsX2S9kLihoKaF9evvKjtSS8Ms254slNtq
         bZkg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533QeKWCnKfNr40n2ekZuYI0FzDkCZTuvFVzACmxohzOqL+bQ5/e
	rwnBaiJGbx50Dd/5QDdEr+k=
X-Google-Smtp-Source: ABdhPJzFdl+a2S2CmFlFOZ85QYogWFheEs9cUM0oRsi9M6zdtu6R8Z+N+vOxiuopibaJLJQfpHymXw==
X-Received: by 2002:a17:90b:224a:: with SMTP id hk10mr14287791pjb.81.1607306124845;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:e287:: with SMTP id d7ls8162421pjz.0.gmail; Sun, 06
 Dec 2020 17:55:24 -0800 (PST)
X-Received: by 2002:a17:90b:a53:: with SMTP id gw19mr14393891pjb.216.1607306124214;
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607306124; cv=none;
        d=google.com; s=arc-20160816;
        b=RiAoM/VoKBV87QykF43G8QcvsBoCV+QrxPQPp0wC3ZcM9HbEjg+8Y3O3dc3wu3r23u
         wM1VjDSwVkym/XX7nNnpnAVOFwGQutZ4c0VC2rOyMEcDeSH+fpFVGjXq/eYwYZXV/dxi
         dgGHchVkd2CrGjES9PiB8WEN0RgnNNrbZdW7SBfusA6BGzQZkT4wcWHeNo/I8v6l3BIj
         6Wv/0l4gj0AioGk45gvI9FO31jhCSxmQF2MOnqguAHFEqlTHHYy9OsmC5EgPmdofVPlD
         7ulYBLIWEpIStC2rXm4AGXCow4SCx2Uvwn/hvs2uMHsAJEhy+Qbg5sY+ANGUOZUCItSB
         QfjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=5YPtHVdBWjy1OYaSxlDdwv5hcEDm0pQeS576EOt+rSo=;
        b=IdAZkGr+CtyecDXrOLdQK3hAakwTgk2Jyvppy0t7fOjPqRWntopm9EkmSIzBNH5shh
         v1FVqfVkd0IYJfuxWe0wwHYXcjKaBsSCE1qjwv0exK5I5b05u0AQR78B87x2YrGWbrlt
         exfuN2awd5EziYJIbZSpanqN6ENaNWN2jrWeJVrUUHAvCPXXEbLmtv6nodi47A9QHy1i
         19kTM+EPzcq88VKqf1dMXJhyzC7XPic4eKKd3y6wS5baTfdu7D5wEbiXVHADJgLc/5q0
         kCrJ5YUTBh5XVKL/+bxWu+qB5UIttUqjaY+RuWTGZ8GYRnaAWvUiN7hNJqmQJveMxDv4
         mYIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id y68si45613pfy.0.2020.12.06.17.55.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Dec 2020 17:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4Cq5vx0B9Cz79TL;
	Mon,  7 Dec 2020 09:54:21 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 7 Dec 2020
 09:54:42 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: <linfeilong@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo
	<wubo40@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 00/12] open-iscsi: fix serverl issues reported by Coverity
Date: Mon, 7 Dec 2020 09:53:58 +0800
Message-ID: <20201207015410.48488-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as
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

Recently, we use Coverity to analysis the open-iscsi package.
Several issues should be resolved to make Coverity happy.

Wenchao Hao (12):
  iscsi_sysfs: Fix NULL pointer deference in iscsi_sysfs_read_iface
  iscsi-iname: Verify open() return value before calling read()
  iscsiuio: Fix invalid parameter when call fstat()
  open-iscsi: Fix invalid pointer deference in find_initiator()
  open-iscsi: Fix NULL pointer dereference in mgmt_ipc_read_req()
  iscsi_net_util: Fix NULL pointer dereference in find_vlan_dev()
  open-iscsi: Clean user_param list when process exit
  fwparam_ppc: Fix NULL pointer dereference in find_devtree()
  sysfs: Verify parameter of sysfs_device_get()
  fwparam_ppc: Fix illegal memory access in fwparam_ppc.c
  iscsiuio: Remove unused macro IFNAMSIZ defined in iscsid_ipc.c
  fwparam_ppc: Fix memory leak in fwparam_ppc.c

 iscsiuio/src/unix/iscsid_ipc.c   |  3 --
 iscsiuio/src/unix/libs/bnx2x.c   |  7 ++++
 iscsiuio/src/unix/libs/qedi.c    |  7 ++++
 usr/idbm.c                       | 14 ++++++++
 usr/idbm.h                       |  1 +
 usr/iscsi_net_util.c             |  6 ++++
 usr/iscsi_sysfs.c                |  2 +-
 usr/iscsiadm.c                   |  4 +++
 usr/iscsistart.c                 |  5 +++
 usr/mgmt_ipc.c                   |  5 ++-
 usr/sysfs.c                      |  6 ++--
 utils/fwparam_ibft/fwparam_ppc.c | 57 +++++++++++++++++++++++++-------
 utils/iscsi-iname.c              |  6 ++--
 13 files changed, 102 insertions(+), 21 deletions(-)

-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201207015410.48488-1-haowenchao%40huawei.com.
