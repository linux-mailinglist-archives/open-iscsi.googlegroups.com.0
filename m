Return-Path: <open-iscsi+bncBCD6VAET5QHRBTUXVXXQKGQEHDUF5FI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 57130115B6B
	for <lists+open-iscsi@lfdr.de>; Sat,  7 Dec 2019 07:50:56 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id e124sf7112508ywc.10
        for <lists+open-iscsi@lfdr.de>; Fri, 06 Dec 2019 22:50:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575701455; cv=pass;
        d=google.com; s=arc-20160816;
        b=aU7httCcrz4+RhuRds9ouOtuLXXQh+fhXBCW+entw0k5rGRFjVMdA7QmL+RySttoMr
         2QK5WYEJL7uQjDnajER34qmOgBlWI+KnkIY8nCccOLsx/5HgwdstrqDzdeAZiT6Zu6Kw
         dTtTwFoQiDK+G3RDmcF96OaG9Tb1M82VQDJ15voXgsU6fSLRtmst1mBxgY4sGR02C0CX
         FvXQvffnCXo2L/FbUNgfl/7Hj7HE7JlJRU79sDVQp3iHUa/Rn2SdSBqazVV5rR6w3W+o
         /8D/cfFHJBdndxEwdhz8sYpGK0uWYaBr8myxQ/ZN0w4FhWnPzSbYcvLX3vNvlcWjq5ku
         2Eww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=bAjV3UO0AoivVmtjmwmyQICpqFj2obZ65pG1PGChrUo=;
        b=o4HDIQ5Jvm4dxQxzxeJyYB/tmsf2aYxnW8vUgH68g0FA4SvZ7561/WlwbLXqT9PQhN
         9n7j0EOtzIQDOqT7vbZKfmXZbbDG6PolynC/ETBzDI4wt98FEyDfPUA/f8l0pf7llMvI
         v+ldmP8dz9QJMJvZGZvRe/oW73UCJSQQoTjbJvAoeln3UUd4eeZYoV98ZFSsTdrUmhVS
         iCCOK4iMjJN6dQXU4JH3qLUyXRG0GmdMbv/UI8cYw0TmhOVGSddqCAILR+qtSBvExyOd
         dDlctHTJarr4vrvcrzFYVP9esKKzyIbR/noIw5nUF//bXP+Ge5lkkRL/agazj5zquWN5
         st7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bAjV3UO0AoivVmtjmwmyQICpqFj2obZ65pG1PGChrUo=;
        b=SkXxN2WMP0zH9Scqqlvhj4uKTZFa4NkCXwQIBnHqAd3efR/34Iw3ZiZyxdEY27eA51
         nE4GS7OGRSwkr2FY9QQjpVsT/BU7DdsJzUkF5kO6N7EhaY9PpiKOHUENnKB89bt/Od6E
         x91rCcFHQpyVeFBxjo5npHHJXkc8D1WiNGQT8t1jdWtbFVPMMAL9FuMfsbWfN+ZVHVnF
         oMHnzFqa9DlUkRvvnI0vQxAr4zMEqY/1HAA7vKrKlw6FfefC1wAnnkVf7v1YYVmnIWrF
         3R7UjMAyQSqIU2v4DX1qZnELT3LF/7pH5R/OrCj7kTkBcxPuGJ5LgJWkGEgpaflaS53X
         4Vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bAjV3UO0AoivVmtjmwmyQICpqFj2obZ65pG1PGChrUo=;
        b=IJuRaljR+Je2iTTlk+g3+QJ8RbGDgU1gKU92icCjUkjHSeb2EA2+RO2hLErFLQf5la
         e5QAXM7v9GNfVi5k9+seFE6uKrpgXS/DdOUgQFfMdttZ6xgZA6ODcttOKSHukwJCqCoM
         rXtE/06t5qbXTHmYNOSj/sAbKeuwJGys+uU2h220TG0V4xu7MymFtPXzerlQdCQMGm1o
         UaEfrpultQU4cLiLyCMboA2GCjdFcDYYUQyhexWtDRJyWMyOHAK621mS+0/MMjnXhyqw
         oXQHKKJSdX/OBVSMxp0F9FcyHXZfldx/zlcI9Xy7qjrC3yVtE5GfjafaniWLKZS1ga6q
         mNWw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXlXxNPtgjSf7/Ybp3N3u0rFRCMSUM5m6MKuLo4rfKqxCPTYCA3
	vechoArgOMMZucbo+72/J4Y=
X-Google-Smtp-Source: APXvYqwj6D3MlBh4INjTw8DHVACT+cbQzIuqGFcfVTfmMHl3ipquSiV+7Df+ipgdA5FbBs9E2oYvsQ==
X-Received: by 2002:a25:6c86:: with SMTP id h128mr4719123ybc.305.1575701454962;
        Fri, 06 Dec 2019 22:50:54 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:1445:: with SMTP id 66ls1269929ybu.5.gmail; Fri, 06 Dec
 2019 22:50:54 -0800 (PST)
X-Received: by 2002:a25:6f55:: with SMTP id k82mr14112937ybc.302.1575701454468;
        Fri, 06 Dec 2019 22:50:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575701454; cv=none;
        d=google.com; s=arc-20160816;
        b=VwtlKLLkSvhXluzSSS9fkScNm9jLIJUYLF4oBb1SGTkQMYgorMIRV8eBlRv6CqSE4l
         RAX5o9tPAPtKxEnuw4OWm6cFtKqkR1TRQClL5VawGJpa4blGEvbnV3G8BBSvVtqgCgoX
         Fh72aOWXQL/suxmvkl7wf6rKmkvfn3muG5nLniNTzsBV+SH4CFOmx0RZP2nMZLkkbFwC
         jRyJGivhTOmfwCdgZ+c0vjyaSDz13vEnt75e4J6UR/7CaOKTGzpQ/p1rSC+7q/I9ZcSr
         c4sN51CCg1tCHcE42OgeoFWs4DJyh8BU0ebttuvtRcWXA5yVYan/SkSMXRcR2j7EAwF7
         WRpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=gV4GKN+RLesw8qAJG5S03X9k62Gvb23iFXZkQG5BHgk=;
        b=Vak2rnE3/yvcdZuI9BIXdTeCz7EucRH7qyOgmFAZshN6iYCFYsW+3BSbkUsTh1/UqQ
         43bpR7vMGsOSSmbD4KB1Jdaa7OB640rfpgu/DIDqz6V2vXHkbpqcajiu7O+7Iu81NKV2
         iV6wVjypCDvEZfw34jHkQKtrURj+ilA15kHyI0Se2oGzBTO9tyEMmZrKoDTzKeTgJZTe
         qJBZSSUgoZMg6Mm6Wu4AjYCvSR4nVxV39iDdu8RfiEph2x2ece6x9crjshdmcZZyRUoV
         ONkgy49BYrytrx6h+RtePGey4JIht+Ppj6dUbb5wPccObAHPhJjiIHfI3kKfZP1dPBCS
         WVIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id k63si908565ywe.3.2019.12.06.22.50.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Dec 2019 22:50:54 -0800 (PST)
Received-SPF: pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id D3A8565F0DE1928B90D6;
	Sat,  7 Dec 2019 14:50:51 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.183) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Sat, 7 Dec 2019
 14:50:44 +0800
Subject: Re: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
To: "wubo (T)" <wubo40@huawei.com>, Lee Duncan <LDuncan@suse.com>,
	"cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>
CC: Mingfangsen <mingfangsen@huawei.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
From: "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
Message-ID: <969e5733-db78-5664-cfad-e6f20d2e1fb4@huawei.com>
Date: Sat, 7 Dec 2019 14:50:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.173.220.183]
X-CFilter-Loop: Reflected
X-Original-Sender: liuzhiqiang26@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
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

friendly ping...

On 2019/11/20 21:26, wubo (T) wrote:
> In iscsi_if_rx func, after receiving one request through iscsi_if_recv_msg func,
> iscsi_if_send_reply will be called to try to reply the request in do-loop. 
> If the return of iscsi_if_send_reply func return -EAGAIN all the time, one deadlock will occur.
> 
> For example, a client only send msg without calling recvmsg func, then it will result in the watchdog soft lockup. 
> The details are given as follows,
> 
> Details of the special case which can cause deadlock:
> 
> sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI); 
> retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof(src_addr);
> while (1) { 
>          state_msg = sendmsg(sock_fd, &msg, 0); 
>          //Note: recvmsg(sock_fd, &msg, 0) is not processed here.
> }        
> close(sock_fd); 
> 
> watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305] Sample time: 4000897528 ns(HZ: 250) Sample stat: 
> curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle: 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140, st: 0
> deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq: 242870, st: 0 Sample softirq:
>          TIMER:        992
>          SCHED:          8
> Sample irqstat:
>          irq    2: delta       1003, curr:    3103802, arch_timer
> CPU: 7 PID: 253305 Comm: netlink_test Kdump: loaded Tainted: G           OE     
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
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
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
>                 if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
> @@ -3712,6 +3715,10 @@ iscsi_if_rx(struct sk_buff *skb)
>                                    break;
>                           err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
>                                                         ev, sizeof(*ev));
> +                          if (err == -EAGAIN && --retries < 0) {
> +                                   printk(KERN_WARNING "Send reply failed, error %d\n", err);
> +                                   break;
> +                          }
>                 } while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
>                 skb_pull(skb, rlen);
>        }
> --
> 1.8.3.1
> 
> 
> .
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/969e5733-db78-5664-cfad-e6f20d2e1fb4%40huawei.com.
