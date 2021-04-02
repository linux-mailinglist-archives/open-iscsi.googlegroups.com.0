Return-Path: <open-iscsi+bncBAABBW6EXWBQMGQEBO6KQOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id C88EB358E0B
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Apr 2021 22:06:52 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id t24sf2021499qkg.3
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Apr 2021 13:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617912411; cv=pass;
        d=google.com; s=arc-20160816;
        b=KO1GkKTtJErbfdY24lBaDTg9JL2zc9eHha+Sdei9ouXiiqjDU+rWlFCmpU5jk3Knl8
         uWzOUUdbRWy7VocEUnoGKPcXcuSU9HbLdpKlJvYjW8Vi7yq1NRHCC5lF7YhbCka/e5hj
         A7JeA+RTSA90bfuomis+8bx0vKlpVvqrtzygJlUDJrtiES/oPbjwMkicoO/jNq9hccZH
         lenn8FHih+yLWm8UE9wa1aekKz+fAxzWgKCfDD3Qyayy+SM11f8J1kzxMM+xbN4kStKY
         FsFJwNXwre8M2J1+3wSQRXzQaZfPoQwrgzK5OMZKUamMY8JCY49QCc4EPM0qivIl4LzJ
         AzBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :date:message-id:subject:from:cc:to:sender:dkim-signature;
        bh=FTLCFNq2KdPjqAqqrVdKa4syPmWwvZSEwjmcgPdUAvY=;
        b=RSp7hElS3QFkRasX7NffrgAuR88GDYGsCtZK4uc58aA1FZ1i/39TqZkhpoP5UXV7Mz
         eL/eE4zapkrNHyODsKtTcDEsWYMcqdPIaYIEnZ1g1v4WQorcT6QHaFEQMIJicq+Oxovr
         ybGygY9OBR5AOmcxuz4ARQje7/1m/hOeK1ywNUqFmPHkYwDctUH96BFkNaICnAB1vi5v
         yTBJXifU8LbEDhSQnHbukDuvgCQm8IN9Y4RjCPnEAwwLeiOmd2eTmHFFP0OMZrtzx11r
         aNgEBMZUOdCYm0EBclIuq4sBbYse8MPRFduqQyEREGVFSsHanF9BepkWSKuOMwh5bRgp
         1Tzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FTLCFNq2KdPjqAqqrVdKa4syPmWwvZSEwjmcgPdUAvY=;
        b=QTy0o8aQkoKLa3SwoWhMkN6zakcE+AyNZB0SfFdsefTaeIt4yjw5ZsDO9Twq/ZZ0iw
         3HaTyHSwP0cn8WZW83fYo1YeoKUhbAF7s4Z1IxoeqJYVWSHJCnPEXXjo5p0H0cC9URnp
         ut6iYk/8MFI5R2/4Uijjje+/zhrzi2yOg+6qk8AE0RFv2AMW/6xMEOjACeqMkfvsH11F
         EOJViyjBeeetE9gbUpcrYXzJsOqewghQLk0mWW+81nyX1OEDVnnYkD+6ahflUyJLpQza
         LZM4GfMX4NaHjI3ecoX6oFaGLaRA9KWrMReAz/f5HfbG/z4O6WSEZXmcNNMN0tyjswdJ
         ozeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FTLCFNq2KdPjqAqqrVdKa4syPmWwvZSEwjmcgPdUAvY=;
        b=nbYa3COXMFOMlcN3T4QG5EVvtwnEAX6EY+zsXibQ2pytTR/ZktKN5Key56tLhx167k
         ERmMPo4lfvzsV0vXyej2RMGdFcttD4lP4BtTbCjbwZ5mZ5TJB1hgcBuk/F2Z3D27bNFA
         40NcJLwKBmc0K5I7Bx6U9kttVHRINfI3nEU92dcpU0f2SkPrmGVJIIpldXiCSa45eucf
         y1sXFcuj/4AW/fBvH2xrFwo6gq2Iwth6nK1pziTuEInvphf1ekVqjgm2uxvvu9mu6Eb+
         +gPWgbaczU01YKmmFTUi+5LY1gPyK9SAGqgRqWQK18TwgMj8en4QqaZnWEoegcj2iExS
         jVQw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532I7grmzzb5A/aMDqHeFwFR/H0gwYg3ImKoQAzU/PrKOyoJ4F9O
	BLIVccLAwPwmr2Ymiozl1i0=
X-Google-Smtp-Source: ABdhPJzZHilirSrVhlsUXTrtEJou9/7uuPRhpR50EqGjof7VuKS5CriSxeeONzV4YJxNY0zm79QcGA==
X-Received: by 2002:a05:622a:4d3:: with SMTP id q19mr9286840qtx.55.1617912411806;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:f97:: with SMTP id b23ls3825919qkn.0.gmail; Thu, 08
 Apr 2021 13:06:51 -0700 (PDT)
X-Received: by 2002:a05:620a:440a:: with SMTP id v10mr10182874qkp.357.1617912411426;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
Received: by 2002:a37:c48:0:b029:2bc:50b8:e1c5 with SMTP id 69-20020a370c480000b02902bc50b8e1c5msqkm;
        Fri, 2 Apr 2021 00:16:36 -0700 (PDT)
X-Received: by 2002:a1f:978e:: with SMTP id z136mr8341049vkd.17.1617347795542;
        Fri, 02 Apr 2021 00:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617347795; cv=none;
        d=google.com; s=arc-20160816;
        b=0goxOAc4rsDUATMBjtth1a9CluYdn85ZABjfzSdy/jWLyH9Dl7XuZYcrFIpY21N8vE
         /pOeB6VOtMWp+SD/SIsdeE6zomp7EiaIW2LNpn8ViZVtIv4NnZ0oDB3oKKYw99M8l6/1
         9OpiWPGPPQEbVBYiEQOP/e0VdxzYxZjaiU4KFRiAoRWp2mDHh6BdcQDH2QHg2eLThjpJ
         fEHcWDQMb1DrhKUtObCs6BIcMVdV4tDvI7viACsdPC658D9ommXIYs8+TBUz6VfyNyZN
         FFiFAvPHm4ghu9B/mnEteJZwKv0Yn9VfMX0KYU4pdxchiBzcATqf/pOGIQw6TetNYhJc
         FfMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:message-id
         :subject:from:cc:to;
        bh=8AaYMfsLiAVdgJ9keQcRNyYNSc4g/MyRw+qoLZdw0IE=;
        b=nrYkLtGtHTga8air1ar6G6lnNTSvFYWZlsMwKRXIp3ciImNZgNvD86DU9wht14HE5f
         37lErB+Y9LAuAH3w9rvqMvJXI5JV3CugseS2o/mWd4ghk8pWFtc3djLN84M9ehbczKv7
         so5AUHrjEeBlO0iTmxq8SIxjG9f/SL2tM/4/2X+Wd+F84Pa7XRhjQtkr5P9c5z74yKUU
         SwpJUqYRjbZBKIRagLKaxwEKmGz23THtgUbg4qAxoIslw97zZkgcJq8CYXSuA+y33egH
         r7vo9hzvETyz6qa/5/njBtgnhRtKf/XLaZK2ieT1R5Ori4/iFE9izhnM5849KGRPGZ5B
         n2Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id u22si434659vsn.0.2021.04.02.00.16.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 00:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FBWVz3WV7zNsDJ;
	Fri,  2 Apr 2021 15:13:47 +0800 (CST)
Received: from [10.174.177.143] (10.174.177.143) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.498.0; Fri, 2 Apr 2021 15:16:21 +0800
To: <stable@vger.kernel.org>, <vbabka@suse.cz>, <gregkh@linuxfoundation.org>,
	<linux-mm@kvack.org>, <open-iscsi@googlegroups.com>, <cleech@redhat.com>
CC: "zhangyi (F)" <yi.zhang@huawei.com>, Kefeng Wang
	<wangkefeng.wang@huawei.com>, <liuyongqiang13@huawei.com>, "Zhengyejian
 (Zetta)" <zhengyejian1@huawei.com>, <yangerkun@huawei.com>, Yang Yingliang
	<yangyingliang@huawei.com>, <chenzhou10@huawei.com>
From: yangerkun <yangerkun@huawei.com>
Subject: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit and
 sysfs_emit_at to format sysfs output")
Message-ID: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
Date: Fri, 2 Apr 2021 15:16:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.174.177.143]
X-CFilter-Loop: Reflected
X-Original-Sender: yangerkun@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=yangerkun@huawei.com;       dmarc=pass
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

sysfs_emit(3d8e2128f26a ("sysfs: Add sysfs_emit and sysfs_emit_at to
format sysfs output")) has a hidden constraint that the buf should be
alignment with PAGE_SIZE. It's OK since 59bb47985c1d ("mm, sl[aou]b:
guarantee natural alignment for kmalloc(power-of-two)") help us to solve
scenes like CONFIG_SLUB_DEBUG or CONFIG_SLOB which will break this.


But since lots of stable branch(we reproduce it with 4.19 stable) merge
3d8e2128f26a ("sysfs: Add sysfs_emit and sysfs_emit_at to format sysfs
output") without 59bb47985c1d ("mm, sl[aou]b: guarantee natural
alignment for kmalloc(power-of-two)"), we will get the follow warning
with command 'cat /sys/class/iscsi_transport/tcp/handle' once we enable
CONFIG_SLUB_DEBUG and start kernel with slub_debug=UFPZ!


Obviously, we can backport 59bb47985c1d ("mm, sl[aou]b: guarantee
natural alignment for kmalloc(power-of-two)") to fix it. But this will
waste some memory to ensure natural alignment which seems unbearable for
embedded device. So for stable branch like 4.19, can we just remove the
warning in sysfs_emit since the only user for it is iscsi, and seq_read
+ sysfs_kf_seq_show can ensure that the buf in sysfs_emit must be aware
of PAGE_SIZE. Or does there some other advise for this problem?


# without 59bb47985c1d + 1G ram
[root@localhost ~]# free
               total        used        free      shared  buff/cache
available
Mem:         947336      169960      389732         896      387644
624216
Swap:             0           0           0

# merge with 59bb47985c1d + 1G ram
[root@localhost ~]# free
               total        used        free      shared  buff/cache
available
Mem:         947340      175176      374396         896      397768
618964
Swap:             0           0           0
[root@localhost ~]#


[   37.683332] ------------[ cut here ]------------
[   37.692747] invalid sysfs_emit: buf:00000000f75441ab
[   37.693914] WARNING: CPU: 1 PID: 576 at fs/sysfs/file.c:577 
sysfs_emit+0xb9/0xe0
[   37.694861] Modules linked in:
[   37.695264] CPU: 1 PID: 576 Comm: cat Not tainted 
4.19.183-00023-gdf225d326e8c #7
[   37.696210] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), 
BIOS ?-20190727_073836-buildvm-ppc64le-16.ppc.fedoraproject.org-3.fc31 
04/01/2014
[   37.697866] RIP: 0010:sysfs_emit+0xb9/0xe0
[   37.698387] Code: 47 c9 c3 48 83 05 76 33 b3 04 01 48 89 fe 48 c7 c7 
64 08 bb 8a 48 83 05 7c 33 b3 04 01 e8 13 7f be 00 48 83 05 77 33 b3 04 
01 <0f> 0b 48 83 05 75 33 b3 04 01 48 83 05 73
[   37.700713] RSP: 0018:ffffc90000af7cf8 EFLAGS: 00010202
[   37.701370] RAX: 0000000000000000 RBX: ffff88803e0e4c00 RCX: 
0000000000000006
[   37.702261] RDX: 0000000000000007 RSI: 0000000000000006 RDI: 
ffff888039455bf0
[   37.703171] RBP: ffffc90000af7d48 R08: 00000000000002f8 R09: 
0000000000000005
[   37.704079] R10: 00000000000002f7 R11: ffffffff8bd9534d R12: 
ffff88801a013740
[   37.705001] R13: ffff88803db37a08 R14: ffff88803db37a30 R15: 
ffff88803db37a48
[   37.705918] FS:  00007fcb96411580(0000) GS:ffff888039440000(0000) 
knlGS:0000000000000000
[   37.706956] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   37.707692] CR2: 00007fcb88cf0000 CR3: 000000001a501000 CR4: 
00000000000006e0
[   37.708607] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000
[   37.709520] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
0000000000000400
[   37.710427] Call Trace:
[   37.710784]  show_transport_handle+0x3e/0x60
[   37.711338]  dev_attr_show+0x22/0x60
[   37.711808]  sysfs_kf_seq_show+0xc6/0x190
[   37.712332]  kernfs_seq_show+0x25/0x30
[   37.712862]  seq_read+0xe1/0x540
[   37.713292]  ? __handle_mm_fault+0xba3/0x1c70
[   37.713866]  kernfs_fop_read+0x36/0x230
[   37.714371]  __vfs_read+0x3c/0x230
[   37.714819]  ? handle_mm_fault+0x1d1/0x340
[   37.715345]  vfs_read+0xb5/0x1b0
[   37.715774]  ksys_read+0x67/0x130
[   37.716218]  __x64_sys_read+0x1e/0x30
[   37.716701]  do_syscall_64+0x95/0x3d0
[   37.717175]  ? do_async_page_fault+0x2e/0x190
[   37.717747]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   37.718406] RIP: 0033:0x7fcb963363f2
[   37.718881] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 8a 41 0a 00 e8 75 f0 
01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 
05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 04
[   37.721290] RSP: 002b:00007ffea78dff18 EFLAGS: 00000246 ORIG_RAX: 
0000000000000000
[   37.722264] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 
00007fcb963363f2
[   37.723169] RDX: 0000000000020000 RSI: 00007fcb88cf1000 RDI: 
0000000000000003
[   37.724100] RBP: 00007fcb88cf1000 R08: 00007fcb88cf0010 R09: 
0000000000000000
[   37.725039] R10: 0000000000000022 R11: 0000000000000246 R12: 
0000000000020f00
[   37.725945] R13: 0000000000000003 R14: 0000000000020000 R15: 
0000000000020000
[   37.726857] ---[ end trace fbd5b85cd7d85530 ]---

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5837f5d9-2235-3ac2-f3f2-712e6cf4da5c%40huawei.com.
