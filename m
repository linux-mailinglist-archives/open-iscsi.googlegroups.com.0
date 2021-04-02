Return-Path: <open-iscsi+bncBAABBW6EXWBQMGQEBO6KQOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id D41C6358E0D
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Apr 2021 22:06:52 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id n15sf935764oie.12
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Apr 2021 13:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617912411; cv=pass;
        d=google.com; s=arc-20160816;
        b=rWtyycPwkWCpNPTSrCvtxbG9wVhy8hKh1qJb4omfQevpIkxVAkrqhiyO7IgulhXwTK
         LexIB45I9MPRe0Gx4juzmkvMfvTRrRzeV489ceKK1xGvcm6ywiRJxCDMxHoFtAO0aC3b
         Fw9TX4GEYdUc53FZyrLg7LxMxRHAi2k4eg0OjFB6Spxwv+0NGNhfPHnoXEgV5v9qzwcp
         zBwpEhUQ06IC20jF7CKbVQWxn8YQdBUuaDW0vVDOUfE6OTXZXKmdrFnzJgioCvzV4EFr
         I++3rcTBUKpjxvhWWQtwn5MhpvweVrNEYbeuamXDj9OU+lASuH9OyC04Tm1pPyZEV+5A
         7JCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=Vt6nhMcHdQRiKvVnf0UFa+e1xS7Q+aND82moAD4HFb0=;
        b=wIKOzBSMuwIG5isCXBrwRE+egRGNHsEKsfMBhRDvpTjnKIkX+/TB9pMRDOgSZANsDD
         mytNKQATUeJj9EF+EjgsX4+NQWnUNu8KYnI9cuhTzaLNwQl+rlVBSV+YBYtLRwlJM0Ng
         4jaT+Jkuf1WVgedXRwiv/28aQetqG0rLyYaQy0s1Yt0Z5FPHpxl+tni7Cl+yaKVQXFE8
         04fos6ZaWbRDu68i9hbD3mn0UU7RdC43XrPdUfBbGxAKhAX5O2B/GL2jqqRSlG2ytQmJ
         EZIjux88FBEmCjEJuZs9GEUV1yHwuQ08SSrDkDGZo6usHok7zqHWo40YfEEyydT8KK21
         4ISw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vt6nhMcHdQRiKvVnf0UFa+e1xS7Q+aND82moAD4HFb0=;
        b=RRneswWra4GVN1m+WbwMf/0F89sIxZFRgknV6qeJ8Keh8077U6rkY9EhKdNhhXkbVP
         DFFonrlSh9ft90l0OUpXt0a0cmhb0YKq6WjWZz6pLL2Uyf0Q8zyd1m285viHHJWBe3P+
         xSF63xkXiwnqZHr2PKNWV2eKJ79+PB9c2OsIRpEw6AfoCRvHBmg3a50XG5mbmJpe3Ms6
         Jj1ND29bEeIg8+JfbEUeeZuDSZ0oC+R40+NNCsXwAkWEapFTYwTiiXjGLZAxZ3hq6Vmr
         CXZNhwcugeB+5vIZ6OpHeL6EJkP5ykEF1EajxIXuqv6PV3TJuvovPKLPQZD7QY4IoWB6
         rSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vt6nhMcHdQRiKvVnf0UFa+e1xS7Q+aND82moAD4HFb0=;
        b=s0RvC3+133Mr6aa0mHhnESkBUc4Ry6ry6/WxWdr1pFrCBwtSHzapEuxLJQynOXBHst
         5W2uY9t6XP9zEoT4oOsDV4CeDaTs7OcXM8/GBkwek+sPYOD6AAwdG2HfQbhS2O2sJM64
         ajiYlqdPiRknuba/g/zxLluLT5bjQChQjcZjgeTTR6wPDcY42dLT93rQHeNk5z36eXx2
         Pp6+dAnKqw2zpKJxzYOU2mtvoPowjUcYexleiXqGp23kR0QWj3Oie9YBE5YAYfNVTvwG
         b1P5r9t+vEU1zhbg8t0tL9E4IMviRDmDQa7+T36/62tx1UVPrksiLfiuLSQlcpIalSZO
         OzEQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5310DQZQ9lmoXbM6qK4OwR0MfPbicAFNxBW3JlcuumL41IRJVkyF
	XrHg8FGrHf9xPYdtYF2R+es=
X-Google-Smtp-Source: ABdhPJy38AoWySKUf2IuA/A/hHbIfex5QgyTqhf5DWUpWGmHeIfp4y6G05PQUb6zdeM0olif0osUxA==
X-Received: by 2002:aca:c4cb:: with SMTP id u194mr7683243oif.74.1617912411770;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:f057:: with SMTP id o84ls1454463oih.3.gmail; Thu, 08 Apr
 2021 13:06:51 -0700 (PDT)
X-Received: by 2002:a05:6808:341:: with SMTP id j1mr7726010oie.173.1617912411350;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
Received: by 2002:aca:6207:0:b029:f8:4f65:42b with SMTP id w7-20020aca62070000b02900f84f65042bmsoib;
        Fri, 2 Apr 2021 00:25:33 -0700 (PDT)
X-Received: by 2002:a9d:5508:: with SMTP id l8mr10419855oth.233.1617348333545;
        Fri, 02 Apr 2021 00:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617348333; cv=none;
        d=google.com; s=arc-20160816;
        b=kPWvwD7PUou74vGYFVKqjEjj5eBY+kfVNTaqkXQrt6NzxgnIbjgXRCIS7AwmTB0SW5
         itNdtCgeobPvdJh36f3NNpvklSdV9xVu2wSo4ebEJkCf8YDgy2ZMyQ9bZBT7jwsBwt0I
         NMsHGCp4h2dkroayImQ/FY9kUVoroLWhLcTDmr9uLovW5K+UrSZ73nkJhRLhw6j8Nt9F
         hzyorohauD6hZp99hzlQFUXj4rVtwBF+mCmO38zZKYU6HPTEeMnKq49Nn0SREr8f0xPH
         11cQUG+WvNtlWVDVFMXniJ8HxopGSWQy31yEqW8HrrrqLSGVLA8lnLb6jf5PqpiVgHMD
         c58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=NbBIvBkV4tuQzlXLQVIXFGGqaJ4MFc3bnU0dNd8KAfk=;
        b=0NdPNRwwb36ogJLFvkb6lXyQTV7UgFKviDTjtaJkBX2SKwp3ZCv0vbyjtnsLziry8I
         /c9he7qM2DOlt3FgtzFVcvQOJr9Wc2Syzo24SvvKRfPh52fyXeS26nWY4MGFOUHU0W5Z
         rJ7mTm07VGSz/ytfLXIKbJGH6sS0B+/mlupnZfOhUGArEuVXIHLn4pKMhnkSOlUtnVLm
         J/OMcwLl1QuOLFO7xUxZ4fb+9gR+TXiWtwk6DYZHRbn+9kYBwtEqMkn+jIExKYriaYCk
         yttF1oN39KrDUyQA7ti/yCv6+MKMMw/wTukCDo6B0ZoLuhn0DcJs9TTt3xxTc9EHCylY
         evXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id f2si1216858oob.2.2021.04.02.00.25.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 00:25:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4FBWhp4sB6zNs0x;
	Fri,  2 Apr 2021 15:22:18 +0800 (CST)
Received: from [10.174.177.143] (10.174.177.143) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.498.0; Fri, 2 Apr 2021 15:24:48 +0800
Subject: Re: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit
 and sysfs_emit_at to format sysfs output")
To: <stable@vger.kernel.org>, <vbabka@suse.cz>, <gregkh@linuxfoundation.org>,
	<linux-mm@kvack.org>, <open-iscsi@googlegroups.com>, <cleech@redhat.com>
CC: "zhangyi (F)" <yi.zhang@huawei.com>, Kefeng Wang
	<wangkefeng.wang@huawei.com>, <liuyongqiang13@huawei.com>, "Zhengyejian
 (Zetta)" <zhengyejian1@huawei.com>, Yang Yingliang
	<yangyingliang@huawei.com>, <chenzhou10@huawei.com>
References: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
From: yangerkun <yangerkun@huawei.com>
Message-ID: <3a321bdb-66d0-978f-cbb2-f40cbe4beb86@huawei.com>
Date: Fri, 2 Apr 2021 15:24:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
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

Emm...

Actually, the problem exist for stable branch like 4.19 after fix for=20
CVE-2021-27365 which include the follow two patch:
2efc459d06f1 ("sysfs: Add sysfs_emit and sysfs_emit_at to format sysfs=20
output")
ec98ea7070e9 ("scsi: iscsi: Ensure sysfs attributes are limited to=20
PAGE_SIZE")


=E5=9C=A8 2021/4/2 15:16, yangerkun =E5=86=99=E9=81=93:
> sysfs_emit(3d8e2128f26a ("sysfs: Add sysfs_emit and sysfs_emit_at to
> format sysfs output")) has a hidden constraint that the buf should be
> alignment with PAGE_SIZE. It's OK since 59bb47985c1d ("mm, sl[aou]b:
> guarantee natural alignment for kmalloc(power-of-two)") help us to solve
> scenes like CONFIG_SLUB_DEBUG or CONFIG_SLOB which will break this.
>=20
>=20
> But since lots of stable branch(we reproduce it with 4.19 stable) merge
> 3d8e2128f26a ("sysfs: Add sysfs_emit and sysfs_emit_at to format sysfs
> output") without 59bb47985c1d ("mm, sl[aou]b: guarantee natural
> alignment for kmalloc(power-of-two)"), we will get the follow warning
> with command 'cat /sys/class/iscsi_transport/tcp/handle' once we enable
> CONFIG_SLUB_DEBUG and start kernel with slub_debug=3DUFPZ!
>=20
>=20
> Obviously, we can backport 59bb47985c1d ("mm, sl[aou]b: guarantee
> natural alignment for kmalloc(power-of-two)") to fix it. But this will
> waste some memory to ensure natural alignment which seems unbearable for
> embedded device. So for stable branch like 4.19, can we just remove the
> warning in sysfs_emit since the only user for it is iscsi, and seq_read
> + sysfs_kf_seq_show can ensure that the buf in sysfs_emit must be aware
> of PAGE_SIZE. Or does there some other advise for this problem?
>=20
>=20
> # without 59bb47985c1d + 1G ram
> [root@localhost ~]# free
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 total=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 used=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 free=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 shared=C2=A0=
 buff/cache
> available
> Mem:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 947336=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 169960=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 389732=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 896=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3876=
44
> 624216
> Swap:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0
>=20
> # merge with 59bb47985c1d + 1G ram
> [root@localhost ~]# free
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 total=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 used=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 free=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 shared=C2=A0=
 buff/cache
> available
> Mem:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 947340=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 175176=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 374396=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 896=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3977=
68
> 618964
> Swap:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0
> [root@localhost ~]#
>=20
>=20
> [=C2=A0=C2=A0 37.683332] ------------[ cut here ]------------
> [=C2=A0=C2=A0 37.692747] invalid sysfs_emit: buf:00000000f75441ab
> [=C2=A0=C2=A0 37.693914] WARNING: CPU: 1 PID: 576 at fs/sysfs/file.c:577=
=20
> sysfs_emit+0xb9/0xe0
> [=C2=A0=C2=A0 37.694861] Modules linked in:
> [=C2=A0=C2=A0 37.695264] CPU: 1 PID: 576 Comm: cat Not tainted=20
> 4.19.183-00023-gdf225d326e8c #7
> [=C2=A0=C2=A0 37.696210] Hardware name: QEMU Standard PC (i440FX + PIIX, =
1996),=20
> BIOS ?-20190727_073836-buildvm-ppc64le-16.ppc.fedoraproject.org-3.fc31=20
> 04/01/2014
> [=C2=A0=C2=A0 37.697866] RIP: 0010:sysfs_emit+0xb9/0xe0
> [=C2=A0=C2=A0 37.698387] Code: 47 c9 c3 48 83 05 76 33 b3 04 01 48 89 fe =
48 c7 c7=20
> 64 08 bb 8a 48 83 05 7c 33 b3 04 01 e8 13 7f be 00 48 83 05 77 33 b3 04=
=20
> 01 <0f> 0b 48 83 05 75 33 b3 04 01 48 83 05 73
> [=C2=A0=C2=A0 37.700713] RSP: 0018:ffffc90000af7cf8 EFLAGS: 00010202
> [=C2=A0=C2=A0 37.701370] RAX: 0000000000000000 RBX: ffff88803e0e4c00 RCX:=
=20
> 0000000000000006
> [=C2=A0=C2=A0 37.702261] RDX: 0000000000000007 RSI: 0000000000000006 RDI:=
=20
> ffff888039455bf0
> [=C2=A0=C2=A0 37.703171] RBP: ffffc90000af7d48 R08: 00000000000002f8 R09:=
=20
> 0000000000000005
> [=C2=A0=C2=A0 37.704079] R10: 00000000000002f7 R11: ffffffff8bd9534d R12:=
=20
> ffff88801a013740
> [=C2=A0=C2=A0 37.705001] R13: ffff88803db37a08 R14: ffff88803db37a30 R15:=
=20
> ffff88803db37a48
> [=C2=A0=C2=A0 37.705918] FS:=C2=A0 00007fcb96411580(0000) GS:ffff88803944=
0000(0000)=20
> knlGS:0000000000000000
> [=C2=A0=C2=A0 37.706956] CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 0000000080=
050033
> [=C2=A0=C2=A0 37.707692] CR2: 00007fcb88cf0000 CR3: 000000001a501000 CR4:=
=20
> 00000000000006e0
> [=C2=A0=C2=A0 37.708607] DR0: 0000000000000000 DR1: 0000000000000000 DR2:=
=20
> 0000000000000000
> [=C2=A0=C2=A0 37.709520] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:=
=20
> 0000000000000400
> [=C2=A0=C2=A0 37.710427] Call Trace:
> [=C2=A0=C2=A0 37.710784]=C2=A0 show_transport_handle+0x3e/0x60
> [=C2=A0=C2=A0 37.711338]=C2=A0 dev_attr_show+0x22/0x60
> [=C2=A0=C2=A0 37.711808]=C2=A0 sysfs_kf_seq_show+0xc6/0x190
> [=C2=A0=C2=A0 37.712332]=C2=A0 kernfs_seq_show+0x25/0x30
> [=C2=A0=C2=A0 37.712862]=C2=A0 seq_read+0xe1/0x540
> [=C2=A0=C2=A0 37.713292]=C2=A0 ? __handle_mm_fault+0xba3/0x1c70
> [=C2=A0=C2=A0 37.713866]=C2=A0 kernfs_fop_read+0x36/0x230
> [=C2=A0=C2=A0 37.714371]=C2=A0 __vfs_read+0x3c/0x230
> [=C2=A0=C2=A0 37.714819]=C2=A0 ? handle_mm_fault+0x1d1/0x340
> [=C2=A0=C2=A0 37.715345]=C2=A0 vfs_read+0xb5/0x1b0
> [=C2=A0=C2=A0 37.715774]=C2=A0 ksys_read+0x67/0x130
> [=C2=A0=C2=A0 37.716218]=C2=A0 __x64_sys_read+0x1e/0x30
> [=C2=A0=C2=A0 37.716701]=C2=A0 do_syscall_64+0x95/0x3d0
> [=C2=A0=C2=A0 37.717175]=C2=A0 ? do_async_page_fault+0x2e/0x190
> [=C2=A0=C2=A0 37.717747]=C2=A0 entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [=C2=A0=C2=A0 37.718406] RIP: 0033:0x7fcb963363f2
> [=C2=A0=C2=A0 37.718881] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 8a 41 0a 00 =
e8 75 f0=20
> 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f=
=20
> 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 04
> [=C2=A0=C2=A0 37.721290] RSP: 002b:00007ffea78dff18 EFLAGS: 00000246 ORIG=
_RAX:=20
> 0000000000000000
> [=C2=A0=C2=A0 37.722264] RAX: ffffffffffffffda RBX: 0000000000020000 RCX:=
=20
> 00007fcb963363f2
> [=C2=A0=C2=A0 37.723169] RDX: 0000000000020000 RSI: 00007fcb88cf1000 RDI:=
=20
> 0000000000000003
> [=C2=A0=C2=A0 37.724100] RBP: 00007fcb88cf1000 R08: 00007fcb88cf0010 R09:=
=20
> 0000000000000000
> [=C2=A0=C2=A0 37.725039] R10: 0000000000000022 R11: 0000000000000246 R12:=
=20
> 0000000000020f00
> [=C2=A0=C2=A0 37.725945] R13: 0000000000000003 R14: 0000000000020000 R15:=
=20
> 0000000000020000
> [=C2=A0=C2=A0 37.726857] ---[ end trace fbd5b85cd7d85530 ]---
>=20
> .

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/3a321bdb-66d0-978f-cbb2-f40cbe4beb86%40huawei.com.
