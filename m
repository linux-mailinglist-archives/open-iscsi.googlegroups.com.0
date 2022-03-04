Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB6EMQOIQMGQEWJ4PYHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113d.google.com (mail-yw1-x113d.google.com [IPv6:2607:f8b0:4864:20::113d])
	by mail.lfdr.de (Postfix) with ESMTPS id 904B14CBF1C
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Mar 2022 14:45:30 +0100 (CET)
Received: by mail-yw1-x113d.google.com with SMTP id 00721157ae682-2dbf52cc4b9sf42534257b3.18
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Mar 2022 05:45:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646315129; cv=pass;
        d=google.com; s=arc-20160816;
        b=fOmEtpfFaxpS1DfyxgGH5e/sgpWnFs99W1mokNsmi258j+JFkDCqutzZ9HyEARs8FO
         9dwTyWpG/KZt8KyZ8zkEyBfUazUYe+iDPF8b0PZvIPW/gCjsc0EB5eTZyAMC2K4OsmDF
         8VDPMkOQmF1tWLm6qdi+Dz3Yv0LGdkUZmd+Bo1hzTndb2Yqqs58GHbX6TuC51xUTQupK
         zp7FKia16vgDaJ2Vn3z+6koIqLwzDDObscGhJPpaT5Hsldj/CV6g0ppdA7RqHhHsLcNI
         VxoPoC5sbuJeIZ/VRABQ2Npw7vxzl5V1Jrx4leCQAch+2Nq8wtaxxl7qPgW7FMBlOmMf
         s4uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=2uQDc4bJ6S6+tmRkLXrZnt6UCOZAOLPj9hXaCd3x86U=;
        b=OBoeMHfLjeIPTUejS5R6TyZTXLk2cHR6tbf4nhfNf4JeNaoVR2mS0uBa+IXzQ3Wgxz
         /2d24mA0oyy4hC+AiRlbcIyRFRtPJ9cgOldbI28UFXhEKXsmbXVuOgEOMbNdV9Fi/AqZ
         llBtp/NhUzXY38D2MbH9/Zoa+NGbcuvGtiiFSMFz49BlVvrvZ8iEzEIRtu9M/tr0bSVy
         6kB/N9QRGC+JUYvouIjIDSMzAUeaYgHHLimDomPMkrHkgU6725V77te2/bQJg4Yggy3q
         1Zbbj7YuGABtNqhcryTqVWRz07QvLD8tjzcNcvhFNpwLzUg06mLgXIa6PGBVl9rJFgdH
         mPPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2uQDc4bJ6S6+tmRkLXrZnt6UCOZAOLPj9hXaCd3x86U=;
        b=Ed2Xwl3HB78/uclMpFP+8K5NjBKNh6jEimh7VfQKbK5IiYJ1FZZsFIztf8ZGgGoAqP
         HrheUcGkfTdWM3p+MdmArtFpYWGNQVQm3QyLzG//8ALTsv52n+2qsDFCTayCEAtQ4m3g
         1MRrbjfpLrcEoRlswAmkUfOA59A5lUTiDjvtMBlxN98tePL0p5sUN8SUazLUQ24fS46h
         WiAa1ZnEDyAi8grxb85c0szDCkBhvVqK/F6c7tOEDwwvScMmndfCSj3NyEiJmPu2kuZN
         P3bmn0is1wW5TFFNeYahYNRu51EBTCWV2Hk1v/g8xYaKc9AzcJhQ0sD2OHSuS8nIrbJj
         880Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2uQDc4bJ6S6+tmRkLXrZnt6UCOZAOLPj9hXaCd3x86U=;
        b=Cf3I1nFFvsfassQ+K84nXdApOYXxrF4hglIGeAX9QrNtJu7G9rXufb5Hngzy6UpYSB
         mr2BUa9rjpnserN2kqKb/uT9gVSmpxaWwU2JFxxVAeewUPQ30Bz/IEDUGY7eo+xwvb3N
         vnh/mBej4UGia6t80mlcFu7HGPT1528Rj/mq7AfULH6ZBWpZ5LYaf7M4+jqiPqAsTA+9
         R9qtK23JF5GFG0yWzE4iFbfSrg7iQ4xRbiQPVaFjYQhMb5xm5UAYQ37mnj20ARd9Mid6
         G+lGFJ+sgo1uQZexqNRDh0yp/tbtvEUlS+C7+GKNKbJMNZ5qxz9viqikHcasK8BZSf+R
         64xg==
X-Gm-Message-State: AOAM532E6CRd8FKL1KWxMt1o0zNTVDcNiFlYtZLePTXsQvEIGs4GGKW+
	kNPj5YEFoXTIuHCGK+o9ElY=
X-Google-Smtp-Source: ABdhPJzLP+axkBZEAh3vDWoShSqA5nV3NDOmHKQdpvsd9e+PXiZpcDGwiyuWK9K51LWpCRoClVRbiQ==
X-Received: by 2002:a25:8c86:0:b0:628:a042:9529 with SMTP id m6-20020a258c86000000b00628a0429529mr7263907ybl.231.1646315129393;
        Thu, 03 Mar 2022 05:45:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6902:3d1:b0:628:68d6:9466 with SMTP id
 g17-20020a05690203d100b0062868d69466ls1758903ybs.10.gmail; Thu, 03 Mar 2022
 05:45:27 -0800 (PST)
X-Received: by 2002:a25:8a87:0:b0:628:a481:d7d2 with SMTP id h7-20020a258a87000000b00628a481d7d2mr6664196ybl.452.1646315127786;
        Thu, 03 Mar 2022 05:45:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646315127; cv=none;
        d=google.com; s=arc-20160816;
        b=rckXxIkOI3VWKlbldIMyiU+JU55GZrRwkrXJmeN6OSnZtXhtL9Qe6SLJa7XuKIzUCv
         zUiEfMe1t75KiQjfH/hy9CsOLDYmtMSkQxTM5xi599Pqp6rsHsaX1CikQ7IetugzYUI3
         EMhhnE7y2yySo80qOc3V0m3AwkHlVVGGAUc87dqOEyUEMf66msKyItJ+W478sNjMJ3NG
         hKEmaGu0lmL4y+lA5e+te2no5LQZ4xJSyNbhY2QZH0QwPqta/ir4IXubCqLzabRdHhOb
         4D9U67rUH9KansR/Io05mHY6vhwvu9cl6WcZWI2cmSF+wS3XDRjH77f0zWDnk3ELPGIq
         eRaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bmHQD+y7YvPdUdgvl1FHXCxqQLy679GhaXnT8rrrT54=;
        b=WM2TIKaftuDr0auGCs4QuCbw8G4D/4gBrFAJoHP3fqS28lFfjpTLw8VDbOmVast4Zs
         Cc+GghENLqaCZarxK+ppMXM0pHG1rENitEzxxmzMXa7x+lFneBHJOsNM1riHftfIYTNZ
         MyAISNSe7KAO3FTtvz1SbpXZ+DLGgW9+44DzkOfZMPDvhoSMs5cmInlswfyOD+yjCLR0
         QIqwyy8udGAfvTzoH1Ghs6a9wUPn210b0g+M2inaQP37KcQ8ft1Luba2oz0S95q1+siI
         zpv9BPhm5t43eimt6fuBFal+f7GkXn/DNRmgaFCb0ymAqmESW5MUTUZ1euPDPDywaWaS
         NvIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id f11-20020a5b01cb000000b0062882b904b4si208025ybp.0.2022.03.03.05.45.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 05:45:27 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4K8XJk69WQzdZwK;
	Thu,  3 Mar 2022 21:44:06 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 21:45:24 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Thu, 3 Mar
 2022 21:45:23 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E .
 J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 1/2] iscsi_tcp: Fix NULL pointer dereference in iscsi_sw_tcp_conn_get_param()
Date: Thu, 3 Mar 2022 21:56:07 -0500
Message-ID: <20220304025608.1874516-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
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

kernel might crash in iscsi_sw_tcp_conn_get_param() because it dereference
an invalid address.

The initialization of iscsi_conn's dd_data is after device_register() of
struct iscsi_cls_conn, so iscsi_conn's dd_data might not initialized when
iscsi_sw_tcp_conn_get_param() is called.

Following stack would be reported and kernel would panic.

[449311.812887] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000008
[449311.812893] Mem abort info:
[449311.812895]   ESR = 0x96000004
[449311.812899]   Exception class = DABT (current EL), IL = 32 bits
[449311.812901]   SET = 0, FnV = 0
[449311.812903]   EA = 0, S1PTW = 0
[449311.812905] Data abort info:
[449311.812907]   ISV = 0, ISS = 0x00000004
[449311.812909]   CM = 0, WnR = 0
[449311.812915] user pgtable: 4k pages, 48-bit VAs, pgdp = 00000000e26e7ace
[449311.812918] [0000000000000008] pgd=0000000000000000
[449311.812925] Internal error: Oops: 96000004 [#1] SMP
[449311.814974] Process iscsiadm (pid: 8286, stack limit = 0xffff800010f78000)
[449311.815570] CPU: 0 PID: 8286 Comm: iscsiadm Kdump: loaded Tainted: G    B   W         4.19.90-vhulk2201.1.0.h1021.kasan.eulerosv2r10.aarch64 #1
[449311.816584] sd 1:0:0:1: [sdg] Attached SCSI disk
[449311.816695] Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
[449311.817677] pstate: 40400005 (nZcv daif +PAN -UAO)
[449311.818121] pc : iscsi_sw_tcp_conn_get_param+0xec/0x300 [iscsi_tcp]
[449311.818688] lr : iscsi_sw_tcp_conn_get_param+0xe8/0x300 [iscsi_tcp]
[449311.819244] sp : ffff800010f7f890
[449311.819542] x29: ffff800010f7f890 x28: ffff8000cb1bea38
[449311.820025] x27: ffff800010911010 x26: ffff2000028887a4
[449311.820500] x25: ffff800009200d98 x24: ffff800010911000
[449311.820973] x23: 0000000000000000 x22: ffff8000cb1bea28
[449311.821458] x21: 0000000000000015 x20: ffff200081afa000
[449311.821934] x19: 1ffff000021eff20 x18: 0000000000000000
[449311.822414] x17: 0000000000000000 x16: ffff200080618220
[449311.822891] x15: 0000000000000000 x14: 0000000000000000
[449311.823413] x13: 0000000000000000 x12: 0000000000000000
[449311.823897] x11: 1ffff0001ab4f41f x10: ffff10001ab4f41f
[449311.824373] x9 : 0000000000000000 x8 : ffff8000d5a7a100
[449311.824847] x7 : 0000000000000000 x6 : dfff200000000000
[449311.825329] x5 : ffff1000021eff20 x4 : ffff8000cb1bea30
[449311.825806] x3 : ffff200002911178 x2 : ffff2000841ff000
[449311.826281] x1 : e0c234eab8420c00 x0 : ffff8000cb1bea38
[449311.826756] Call trace:
[449311.826987]  iscsi_sw_tcp_conn_get_param+0xec/0x300 [iscsi_tcp]
[449311.827550]  show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0xe4/0x100 [scsi_transport_iscsi]
[449311.828304]  dev_attr_show+0x58/0xb0
[449311.828639]  sysfs_kf_seq_show+0x124/0x210
[449311.829014]  kernfs_seq_show+0x8c/0xa0
[449311.829362]  seq_read+0x188/0x8a0
[449311.829667]  kernfs_fop_read+0x250/0x398
[449311.830024]  __vfs_read+0xe0/0x350
[449311.830339]  vfs_read+0xbc/0x1c0
[449311.830635]  ksys_read+0xdc/0x1b8
[449311.830941]  __arm64_sys_read+0x50/0x60
[449311.831295]  el0_svc_common+0xc8/0x320
[449311.831642]  el0_svc_handler+0xf8/0x160
[449311.831998]  el0_svc+0x10/0x218
[449311.832292] Code: f94006d7 910022e0 940007bb aa1c03e0 (f94006f9)

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 1bc37593c88f..14db224486be 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -741,11 +741,16 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 {
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
-	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
+	struct iscsi_sw_tcp_conn *tcp_sw_conn;
 	struct sockaddr_in6 addr;
 	struct socket *sock;
 	int rc;
 
+	if (!tcp_conn)
+		return -ENOTCONN;
+
+	tcp_sw_conn = tcp_conn->dd_data;
+
 	switch(param) {
 	case ISCSI_PARAM_CONN_PORT:
 	case ISCSI_PARAM_CONN_ADDRESS:
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220304025608.1874516-1-haowenchao%40huawei.com.
