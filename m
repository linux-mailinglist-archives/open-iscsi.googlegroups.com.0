Return-Path: <open-iscsi+bncBDTZTRGMXIFBBEVW6PXQKGQE37WBARY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE86127CA7
	for <lists+open-iscsi@lfdr.de>; Fri, 20 Dec 2019 15:30:44 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id q187sf6748771ywg.12
        for <lists+open-iscsi@lfdr.de>; Fri, 20 Dec 2019 06:30:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576852243; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y3m5HWoryVPV5nzrBS0uzfpjN1TZajoEmMlcKcmiolU9By5s9wAcjTDCHjq6u4tvbo
         U+3RWkFmNaX5qMQDGLGz61aqS0onElMQYE2mFFTwPw2xt54KlriU6/1XbQlsyGwfCJDt
         6AesMIfzgC15n1HrJBiWjBYJe5ZuRdt09z7B+IU3nD0PicBvv4Nak4mRorXirMhEHOUJ
         +C7ZZDXyDFlRshZfmW2u+J2Gd3WVNEjbwTIPKRx5NFeNas8vHGetmKfZSdNLqTCGD2eu
         yyUjlbZBnZXbnddOzSEC8/i+RCCLxxOoX0jeFa23X8S3GMo3EPbu58k+6mf6+Mv1RFB/
         EBfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=/3p49Aga2x8vQu4xC6r7KudvnBC/6gV3hNM0cSR902g=;
        b=zNg8n/dYsAvwvPw5LMhyGh7vaRdDq+8uChZqfM/nwM2fmsuV20/RwCrJdHktW+OnMc
         EKGUCaqC1HsxmPO6PftgQqMnGLgolPUmsG4jHDq2s/CpP7C6hrbod9wnHW0spXHUqF2r
         izoPqkA+Ww/jcWQLZcDBmMbRZD+QkeJiS/FaCNI4y01BL+9ZXN0hjCEDqv2O6VbaHtVU
         BMk3cXLbfo+uUrUeWfRr6XNdaJMQjkOIu/zVnOCH/zaP6wsfEDGsp7sJ14H+e+p4T6IN
         mTussYKx2rnxYGQnYiWN2mHJxGX78JC9D53IZlhNYAPxBbX/2FLqjYRagZjpb9PsL16N
         WIHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LCpCmCeg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/3p49Aga2x8vQu4xC6r7KudvnBC/6gV3hNM0cSR902g=;
        b=sakXQk7VM99Vw2nyrHFnoV2LdGkLXdvyzhcZYpoKMp5BNfsnYvojxRfn5WHs3o36s9
         UkDXUEE/la0jGZeSoEj/A202FVRee4C0Q0dRIP7QTByqi3hOy5izW/CnE0TTuP2u2XLW
         M/tXEzqw9m8+QpjBE7e8G8d1mglIg8Tnd3aU5sm+hw2eg3HfT1XwZsWoHY6SJb9kgfZw
         G8e9s+/WYHtVc5EFQORLZk1gkUEpMPJrvNpyCu4K9hWLOrn18F4xomaYJRtUM0G+x4td
         qgpY0Fkrzl+kZ65zvfbFAI09KrfLW5+s0A7D8W1tFieleNK1WGVHz0emhxvij/5CyMjo
         DEyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/3p49Aga2x8vQu4xC6r7KudvnBC/6gV3hNM0cSR902g=;
        b=R0IajTVJPqLRbpSjDUByjtlKbgXI1rplJAgwrIXjn3HKYkoqXcIJpXRHuwS2hgDp+I
         Zik5dK5quVj+1/OlNYNffuXyjqbd1mMHzK4wRWOOh1vtpfwJAAblAV48T2KtsSoLt4MA
         HPFJRhijWR9C1lbk+Ux1ULASp3HptSzdFnF4c7DW7MhGpbgGwgco1waA989n1+zng74s
         j66IWWHclL3G2O9xxgHsNabfW32DGv8WeSTSMqMjrQBRwz23MzLnkVWRAjVTVb7wtOAV
         a0foXlPXcxt4WNjI86GPXtBxu3DPSzMyNQZfeX1MkeJStp0UymiFgGyfedjeugHSwCMo
         PXYQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUOA8QzkBXojlXxq0ZO4I8j/QeeIPQN3xs7BvDjdPiwMx/AmMD4
	TR+48vAemZlo9mRCSifgmd8=
X-Google-Smtp-Source: APXvYqy5Q2jkfDgHJd6mn3H2UqnC0LnyBE5DNYRE+e7KZIuBv9KzstvvQw0Hs9XgV3ufhRmJSR7zgQ==
X-Received: by 2002:a81:4685:: with SMTP id t127mr10293809ywa.280.1576852242845;
        Fri, 20 Dec 2019 06:30:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:2e94:: with SMTP id u142ls1367679ywu.11.gmail; Fri, 20
 Dec 2019 06:30:42 -0800 (PST)
X-Received: by 2002:a81:f50:: with SMTP id 77mr11353825ywp.340.1576852242390;
        Fri, 20 Dec 2019 06:30:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576852242; cv=none;
        d=google.com; s=arc-20160816;
        b=yBOvwkQtPr8ziLGxcqQiJnk9/qUSlm7gntB+cUR+Bjpg8pqZjqLPfso8Bv9vdrRH1x
         eCn1UlsKcoBYCQ0cQEw3gtCpRSFcYDwwFChiJQUzb60jum7O2qxbQPwhI1e6DPTyyQR0
         omX2VkxtPzk5OgoNOzr/XMCwrNzXxsE6YmLgk2qXdNvefucR55miFIVyZScbLLk7JmYI
         /pT3e/FHcF2Rb0eTimOwUChZiW59ffQhLr8hteRt0LCKueF5kzwp2YOLUampzR9vk6/K
         udCuXq9pcpUCpGK3uzW/bHkKXWeBRlbHlADmumUpZtfPV3BiZ11qvWCGj59g8GwyOTMM
         NAHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ay5jKTebsjSLpm5sqFqwZUBwCXSeP0GZf8F33oSkyww=;
        b=cum3HSvfRYs7pAp6YquKIYoK9eglAtKtJ/suEYr8E9aNEDgXZJ72YF6j2faBJ11y3Y
         Dww/evZfJeoBN5KaPTO/Ujj85dbHUMtFlEGVQo7F22cYsaO09nsbnLEpE807hHMuoRT+
         mzEwzTyKpkIWgOh8g8eTo+4iE1lAqIsgCmIJ1SMPVcEGqKSErtJIR16teLiJI+6xgxl3
         ro+sqgylVjmaPg1aN+gUFAvl642RX0seSu+7L2jRMYb9dtWZUDKoX60YstAtjoJi0aqc
         BVYUZC+XEczCukiL8W7F3Lldra+BQjwCi9aw3kX92ajFwN9Xjyt5VvH3wjRL7Pmp95qT
         Jy0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LCpCmCeg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r9si581812ybk.0.2019.12.20.06.30.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Dec 2019 06:30:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 737C624684;
	Fri, 20 Dec 2019 14:30:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bo Wu <wubo40@huawei.com>,
	Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 34/52] scsi: iscsi: Avoid potential deadlock in iscsi_if_rx func
Date: Fri, 20 Dec 2019 09:29:36 -0500
Message-Id: <20191220142954.9500-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220142954.9500-1-sashal@kernel.org>
References: <20191220142954.9500-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LCpCmCeg;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: Bo Wu <wubo40@huawei.com>

[ Upstream commit bba340c79bfe3644829db5c852fdfa9e33837d6d ]

In iscsi_if_rx func, after receiving one request through
iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to
reply to the request in a do-while loop.  If the iscsi_if_send_reply
function keeps returning -EAGAIN, a deadlock will occur.

For example, a client only send msg without calling recvmsg func, then
it will result in the watchdog soft lockup.  The details are given as
follows:

	sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI);
	retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof(src_addr);
	while (1) {
		state_msg = sendmsg(sock_fd, &msg, 0);
		//Note: recvmsg(sock_fd, &msg, 0) is not processed here.
	}
	close(sock_fd);

watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305] Sample time: 4000897528 ns(HZ: 250) Sample stat:
curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle: 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140, st: 0
deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq: 242870, st: 0 Sample softirq:
         TIMER:        992
         SCHED:          8
Sample irqstat:
         irq    2: delta       1003, curr:    3103802, arch_timer
CPU: 7 PID: 253305 Comm: netlink_test Kdump: loaded Tainted: G           OE
Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
pstate: 40400005 (nZcv daif +PAN -UAO)
pc : __alloc_skb+0x104/0x1b0
lr : __alloc_skb+0x9c/0x1b0
sp : ffff000033603a30
x29: ffff000033603a30 x28: 00000000000002dd
x27: ffff800b34ced810 x26: ffff800ba7569f00
x25: 00000000ffffffff x24: 0000000000000000
x23: ffff800f7c43f600 x22: 0000000000480020
x21: ffff0000091d9000 x20: ffff800b34eff200
x19: ffff800ba7569f00 x18: 0000000000000000
x17: 0000000000000000 x16: 0000000000000000
x15: 0000000000000000 x14: 0001000101000100
x13: 0000000101010000 x12: 0101000001010100
x11: 0001010101010001 x10: 00000000000002dd
x9 : ffff000033603d58 x8 : ffff800b34eff400
x7 : ffff800ba7569200 x6 : ffff800b34eff400
x5 : 0000000000000000 x4 : 00000000ffffffff
x3 : 0000000000000000 x2 : 0000000000000001
x1 : ffff800b34eff2c0 x0 : 0000000000000300 Call trace:
__alloc_skb+0x104/0x1b0
iscsi_if_rx+0x144/0x12bc [scsi_transport_iscsi]
netlink_unicast+0x1e0/0x258
netlink_sendmsg+0x310/0x378
sock_sendmsg+0x4c/0x70
sock_write_iter+0x90/0xf0
__vfs_write+0x11c/0x190
vfs_write+0xac/0x1c0
ksys_write+0x6c/0xd8
__arm64_sys_write+0x24/0x30
el0_svc_common+0x78/0x130
el0_svc_handler+0x38/0x78
el0_svc+0x8/0xc

Link: https://lore.kernel.org/r/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com
Signed-off-by: Bo Wu <wubo40@huawei.com>
Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 417b868d8735e..ed8d9709b9b96 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -24,6 +24,8 @@
 
 #define ISCSI_TRANSPORT_VERSION "2.0-870"
 
+#define ISCSI_SEND_MAX_ALLOWED  10
+
 #define CREATE_TRACE_POINTS
 #include <trace/events/iscsi.h>
 
@@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
 		struct nlmsghdr	*nlh;
 		struct iscsi_uevent *ev;
 		uint32_t group;
+		int retries = ISCSI_SEND_MAX_ALLOWED;
 
 		nlh = nlmsg_hdr(skb);
 		if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
@@ -3712,6 +3715,10 @@ iscsi_if_rx(struct sk_buff *skb)
 				break;
 			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
 						  ev, sizeof(*ev));
+			if (err == -EAGAIN && --retries < 0) {
+				printk(KERN_WARNING "Send reply failed, error %d\n", err);
+				break;
+			}
 		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
 		skb_pull(skb, rlen);
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191220142954.9500-34-sashal%40kernel.org.
