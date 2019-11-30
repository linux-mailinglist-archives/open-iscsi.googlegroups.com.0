Return-Path: <open-iscsi+bncBDO7B5X3UIBBB6FSRDXQKGQE4K37WHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA97610DCEB
	for <lists+open-iscsi@lfdr.de>; Sat, 30 Nov 2019 08:25:44 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id l12sf5869329ljg.21
        for <lists+open-iscsi@lfdr.de>; Fri, 29 Nov 2019 23:25:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575098744; cv=pass;
        d=google.com; s=arc-20160816;
        b=gH+9nJHKF5dagYtSM2fcl+wO498E3V3Af3gKzEu1kJ7FLYyH33LTtcvS6RA/SBcxeD
         8KV/gei9IW0s7aOhCElPNlhFiB+vbjInY4NSzUMTCdFVp7WJGJ3ReHcgPRQYCdnIr4Ad
         2JwTOxlmAE+jRAFmQApH2ztfUhlolz6e0s/tajSX35kx6COliwSwkCIh32qdfrz6MtN6
         szVqBnBaUm+wrlqbDlRM7w9bw+ob7KYIA8j6HeVSBswl1E7P9yMFIsAPvFZTRU7Ms89T
         gqCS6Wx/93IJikwxLNf+IMhjAq0UNpibXjWVDNcjIlqsZiSWqpOoLA30gBiKJ7SMNbBq
         +mGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=+w+eP+8n+cxBbe1ZYw+PjAzemzRBUzHD6pxV2IsXKrc=;
        b=CH7036CJNRmuRcD9M8JZclrA5QPM1WJtbQ/OJzXtKcqz7EUZYuVZmh9NpucCzgTpWM
         7kekADtY9pgI/nF1vqkoj+wvzY5/ncCxF39Jtt1t8seHYi0ARBhYw9vuYl9sArJkfXFj
         7K5p+wemerr1Oj7nP7bBGyoGDG04bu8fA/tgdpivqCYwfuKh3pGA2dQOGkX9C82bkRVy
         dazShgzyknbfuBVabsEYaWuH3wS6a6OVd13MJZk2mlusjPm7FbbOpvTVd6iarH/PCb5D
         NOEGjJVwM/GBBiRkWkV578InB5UWr3c910icFu3oHlS5AJxGt0Bo+7EAStNSgmRV5QIi
         rjfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+w+eP+8n+cxBbe1ZYw+PjAzemzRBUzHD6pxV2IsXKrc=;
        b=dDZKbv6buabNQePS28+9IC+mn/nOokSWfumXkQKuVStMOINYAcv1X6uUqWlXDA+cjl
         IQdOGPqd9yDq7QwB9MzrC5KGPvCGtE2oIKUJAsxdTTOrM5p/DyCrI1bYUA2V0NySKJew
         KIEWU1/i8+NIv4ARC97f1kO7NLNE0UUiUw4Ivt3GPklsZVKOKji9KttPs0OY+Kn1dcTk
         oqnKo97FT/ZZjfS2YiJp7x37ow0vZwAqsD/JnFRtVh6LoirMRLdzOoT1hXCYWzCAFZTT
         09RVM++dzinyTM6t4haPHlZajXtbAiPc0mfieAiwyLXS9XnA1mbNosv5HWCNVPSEGR8t
         a7Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+w+eP+8n+cxBbe1ZYw+PjAzemzRBUzHD6pxV2IsXKrc=;
        b=XA94eq8IJgbLnE8lkD0Cvc+NIKNnGMB8sUIfJsmSWj8zHYk+jF6efueBFlFPbdkbjC
         Ni4UNrKK/fc9WjdDfcC3m+0CUIVO5HYcJE75fnYzR2OoDGNyfY+bigdklf3yNN3DfSFR
         GBF31Ej01UxlOL9Gdxj8N0XRaq7lL6EsMMIpUhtpQyvLvLhy+1CfEgmrodr/DevMhp6g
         HJ+RC1nelOxi+fTRIxkZlGr7d17ugm+kaXuZKSjbBcOXMic/D5QBSCmIysU2tAFeMxl7
         P/e6s2jlA1UalequnGHqkTZB3UU0CwhgF1spXOehmS/sNwDL7zVzALg21MDqRtmKUzwP
         QfGg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVI56xyy+uYxqrA03JvfI9louMUDCOnJo7ykKRIrftUCYQTYSx2
	4kvXAursjNtc+63+4uNFhbc=
X-Google-Smtp-Source: APXvYqyKfQuBwzeTC/Bv9DK6/PGRp79M2xr+qWjaMnNgjF0lmsh319iEF0EkKXTQWgzDbfMaXqakng==
X-Received: by 2002:a05:6512:284:: with SMTP id j4mr25894098lfp.109.1575098744347;
        Fri, 29 Nov 2019 23:25:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:3cc:: with SMTP id f12ls1777039ljp.1.gmail; Fri, 29
 Nov 2019 23:25:43 -0800 (PST)
X-Received: by 2002:a2e:89da:: with SMTP id c26mr512947ljk.54.1575098743568;
        Fri, 29 Nov 2019 23:25:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575098743; cv=none;
        d=google.com; s=arc-20160816;
        b=h7PrHzkFzojkz5fNl2Ze8Ih5RX0ApGXO1p17Et+WvtxbzqNL6DFWEFE6CWdOrCZPSN
         1EAXNfxrP25pCYGfYU70AM56f0yrOzOQqzzQA67OusCjc5GI45kOM1F+RLZwgYSbhjCP
         X5wFrmScQpSR2ln5857HKKvbcSoLUBHJJuxFgmh3dj1kII5c0kiG8gQH1xJCXLTiMniR
         4u0bWw45plTOB8zYyCP2Ho0UaFHlERI0be+sZ2e04Lz6zOCrc6X3xCOGRE9IdIlMfcvu
         k/UjQ9XrTMiSfIJuU/YzMJJ/LIqsFm44CpsdJN3j9a6wmi6G4t1xY5WOP/ChDDLW5/Sx
         bqTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=iziMUlBPzZXptFd5uQ6tFhnMzAIsmN2X3vBaVtdCD5Y=;
        b=bo/rHFGCNjAabNRiEZ//sYNbAmPtqle/8OsBD9fUKu5Qt1RC43e21Qpe0hS628sVNb
         x46mXR35yv73k/t016qxHAeaFcP+R0UQwRzAsE+0UssOXWtWkjgms23QopEci7e0lzLi
         iHM/8jMQ5+LaldCS7WzWegokN9z2019M6pAc4Y5+cFdar8+DVBZMdKIGFY7AC8bWXAZh
         IbTl247UQfk/OMjwvMCR2BXxIU3JxqgUNSj7kSZmAa/Pb50OPntNtpQb4cb1lh3QTiMJ
         /GzFhisgicCMiulkA/Y+yMgpr6iYAGv/fKi2mTqrErflny1M5jAa4w7p8Z9xpb8uPgcA
         N8yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga03-in.huawei.com. [45.249.212.189])
        by gmr-mx.google.com with ESMTPS id o193si449640lff.4.2019.11.29.23.25.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Nov 2019 23:25:43 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as permitted sender) client-ip=45.249.212.189;
Received: from DGGEML403-HUB.china.huawei.com (unknown [172.30.72.53])
	by Forcepoint Email with ESMTP id 69B62B5CE3B3A718B691;
	Sat, 30 Nov 2019 15:25:38 +0800 (CST)
Received: from DGGEML505-MBX.china.huawei.com ([169.254.12.88]) by
 DGGEML403-HUB.china.huawei.com ([fe80::74d9:c659:fbec:21fa%31]) with mapi id
 14.03.0439.000; Sat, 30 Nov 2019 15:25:27 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: Lee Duncan <LDuncan@suse.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: RE: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
Thread-Topic: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
Thread-Index: AdWnTxEsStx3PExLTm21jFNMmytp6A==
Date: Sat, 30 Nov 2019 07:25:26 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E68ABC@dggeml505-mbx.china.huawei.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.221.252]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.189 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

Friendy ping...

> 
> In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg func,
> iscsi_if_send_reply will be called to try to reply the request in do-loop.
> If the return of iscsi_if_send_reply func return -EAGAIN all the time, one
> deadlock will occur.
> 
> For example, a client only send msg without calling recvmsg func, then it will
> result in the watchdog soft lockup.
> The details are given as follows,
> 
> Details of the special case which can cause deadlock:
> 
> sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI); retval =
> bind(sock_fd, (struct sock addr*) & src_addr, sizeof(src_addr); while (1) {
>          state_msg = sendmsg(sock_fd, &msg, 0);
>          //Note: recvmsg(sock_fd, &msg, 0) is not processed here.
> }
> close(sock_fd);
> 
> watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305]
> Sample time: 4000897528 ns(HZ: 250) Sample stat:
> curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle:
> 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140,
> st: 0
> deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq:
> 242870, st: 0 Sample softirq:
>          TIMER:        992
>          SCHED:          8
> Sample irqstat:
>          irq    2: delta       1003, curr:    3103802, arch_timer
> CPU: 7 PID: 253305 Comm: netlink_test Kdump: loaded Tainted: G
> OE
> Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
> pstate: 40400005 (nZcv daif +PAN -UAO)
> pc : __alloc_skb+0x104/0x1b0
> lr : __alloc_skb+0x9c/0x1b0
> sp : ffff000033603a30
> x29: ffff000033603a30 x28: 00000000000002dd
> x27: ffff800b34ced810 x26: ffff800ba7569f00
> x25: 00000000ffffffff x24: 0000000000000000
> x23: ffff800f7c43f600 x22: 0000000000480020
> x21: ffff0000091d9000 x20: ffff800b34eff200
> x19: ffff800ba7569f00 x18: 0000000000000000
> x17: 0000000000000000 x16: 0000000000000000
> x15: 0000000000000000 x14: 0001000101000100
> x13: 0000000101010000 x12: 0101000001010100
> x11: 0001010101010001 x10: 00000000000002dd
> x9 : ffff000033603d58 x8 : ffff800b34eff400
> x7 : ffff800ba7569200 x6 : ffff800b34eff400
> x5 : 0000000000000000 x4 : 00000000ffffffff
> x3 : 0000000000000000 x2 : 0000000000000001
> x1 : ffff800b34eff2c0 x0 : 0000000000000300 Call trace:
> __alloc_skb+0x104/0x1b0
> iscsi_if_rx+0x144/0x12bc [scsi_transport_iscsi]
> netlink_unicast+0x1e0/0x258
> netlink_sendmsg+0x310/0x378
> sock_sendmsg+0x4c/0x70
> sock_write_iter+0x90/0xf0
> __vfs_write+0x11c/0x190
> vfs_write+0xac/0x1c0
> ksys_write+0x6c/0xd8
> __arm64_sys_write+0x24/0x30
> el0_svc_common+0x78/0x130
> el0_svc_handler+0x38/0x78
> el0_svc+0x8/0xc
> 
> Here, we add one limit of retry times in do-loop to avoid the deadlock.
> 
> V4:
> 	- modify the patch subject, no code change.
> 
> V3:
> 	- replace the error with warning as suggested by Ulrich
> 
> V2:
> 	- add some debug kernel message as suggested by Lee Duncan
> 
> Signed-off-by: Bo Wu <wubo40@huawei.com>
> Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> Reviewed-by: Lee Duncan <LDuncan@suse.com>
> ---
> drivers/scsi/scsi_transport_iscsi.c | 7 +++++++
> 1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c
> b/drivers/scsi/scsi_transport_iscsi.c
> index 417b868d8735..ed8d9709b9b9 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -24,6 +24,8 @@
> 
>  #define ISCSI_TRANSPORT_VERSION "2.0-870"
> 
> +#define ISCSI_SEND_MAX_ALLOWED  10
> +
> #define CREATE_TRACE_POINTS
> #include <trace/events/iscsi.h>
> 
> @@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
>                 struct nlmsghdr       *nlh;
>                 struct iscsi_uevent *ev;
>                 uint32_t group;
> +                int retries = ISCSI_SEND_MAX_ALLOWED;
> 
>                  nlh = nlmsg_hdr(skb);
>                 if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) || @@
> -3712,6 +3715,10 @@ iscsi_if_rx(struct sk_buff *skb)
>                                    break;
>                           err = iscsi_if_send_reply(portid,
> nlh->nlmsg_type,
>                                                         ev,
> sizeof(*ev));
> +                          if (err == -EAGAIN && --retries < 0) {
> +                                   printk(KERN_WARNING "Send
> reply failed, error %d\n", err);
> +                                   break;
> +                          }
>                 } while (err < 0 && err != -ECONNREFUSED && err !=
> -ESRCH);
>                 skb_pull(skb, rlen);
>        }
> --
> 1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E68ABC%40dggeml505-mbx.china.huawei.com.
