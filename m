Return-Path: <open-iscsi+bncBDTZTRGMXIFBBG4GZDCAMGQE2XP4BDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3b.google.com (mail-oa1-x3b.google.com [IPv6:2001:4860:4864:20::3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553DB1B446
	for <lists+open-iscsi@lfdr.de>; Tue,  5 Aug 2025 15:12:00 +0200 (CEST)
Received: by mail-oa1-x3b.google.com with SMTP id 586e51a60fabf-2feec31ffd9sf2315075fac.0
        for <lists+open-iscsi@lfdr.de>; Tue, 05 Aug 2025 06:11:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754399518; cv=pass;
        d=google.com; s=arc-20240605;
        b=H7L22JzO6QyO3fajL2UHVxM5ilSkuIpERW9xR/SdYPfAKoApU5hBiC7UjbGG7C/ZeS
         Na4Pz0QjCNMDDVhSxfIpjtFUyrZMD1QUUU2In5MFSV2yUCTZ/rIZQZ4g+9ih/yOCNBLm
         0GL9gEI90v/tr2Xkga8Qb/AF9kwYMy6IndIU0M/1QQKHVI5sTylxe96L3NEa6gLcnn63
         4aa7AklZ41u8qk5Pf6AF4+GhyNeCyVGJrhB/VQHzTXs+F2zKk1l1DwrPSWku7Lbpptic
         tgbHgjP8HWCp2Wco8IYxr8r48GIBTP+45Kemaf2MxKYlapIKlHZ6BP9Y9TGt+WcJXVdb
         D8tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rOf1NyAWMuiI20/ur3C2mp7ZmsfLnCwW1bckNNoDpOw=;
        fh=f1XSH87/QzbUhm+W/xGazrLR1nruqUd5fR52+HYnMeA=;
        b=bqCwr0XomXbvdFjjjaghxz3EuDpv6r1/H8833/pNTIhPjh+ZiswPbBFj/JC5Bkzlog
         LmN1FTOsNVVZu+Fw8fGemFkeGQBP7sZGlld17To8Uk1nihXSKrdjyBx/fbgXDIqwvLdL
         767BNC1jvxUyFy6ziRE+vXXEVSAQ+upC5rQitlpf67bEfbm5/UAs/XWdjwV9hORNkVJP
         p290AMsrhwVrl3mnhZPoqtMNTT5Ez8qD84tZw6V40nzB92m+WjBrTr4rq8gL8CDNIZdw
         gKMh+ek2KsMtvECHPSloym2JDBP9Ne6WSeHV6fyJpnx7cS/ydRZjNqqm2da9b7WNfnAg
         5A2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KeX1sK3h;
       spf=pass (google.com: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1754399518; x=1755004318; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rOf1NyAWMuiI20/ur3C2mp7ZmsfLnCwW1bckNNoDpOw=;
        b=nE4qKQMHQcQqUW/l3Iy6dtKZ6BKs55BviW4Bw3uaAyh2VVJDXvS/zkRawOUW6yvaCZ
         OYoIdk3KkpXaWAmiMKRWtO4iLySX8nHZUe1CZd//u05+PU07tcX+3NMMTGewx/TixJej
         T6o4Led2fMnzufG59jyTOro5tfM0kAA6g4mFhq+wYaNGagBGezb+8f0IDHvjoO9rmz6o
         c/nxlT7Dxew03T7Cb7CkNCvw+06VCQ1wiU6fs31JLSkJIFrkAFBi2zKvyARW7A+ntco3
         DdKd+R1gq7ghI1YKsydSy/ppx4VfnqQOCkv5ToNjR83smx5QXgbaTz4fkaPR4XNaGeyJ
         Nu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754399518; x=1755004318;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rOf1NyAWMuiI20/ur3C2mp7ZmsfLnCwW1bckNNoDpOw=;
        b=l3ofgouu2ftupoCZAiCQ+jjvQgkDwYaaSUKOe5Dma/hxYnQxm3PdH3XIj+wht4nRpU
         gvBUIbA1oiBQMaTGSWAORBQKXFQui7XZrda+oefiXsDL12hHBcqljGcMUucjF5X/p1nW
         N7LUG64DgS2QVOVT4zyBTDtAThRr/Xq+VPGPqjEByeIJmMh6NI2BTu+4rZnfWOza/lp3
         8AWRlAxkhmgzbkHPgAe1T+sO7uqnWQgNX3SBUUMGj7iN+fWDvcTwnLKT71kQvTFm8M5A
         ujftooJbP8WnkLPN8HU6y1Myk00VaS47mJWbihxeUTk6DPg2hP2gxBu/tnjgu7YEpz4V
         XIFA==
X-Forwarded-Encrypted: i=2; AJvYcCV6HegqMlV17/FnmqXXZmS+yJM37CmZ1xe5InXhfzFgb/xfznbAZWQaBOYZuZpCY5D6/uaIOg==@lfdr.de
X-Gm-Message-State: AOJu0YzcZSDWh6u8UXW8NzkeT5zUX9rFHJ7tKSIxmsh8qz1d7qS95Mwp
	WPY/jAgGI79LnJe5N/6EI1E0f7oBR0udFB+0sHoeabG0RCH+Ow623QZp
X-Google-Smtp-Source: AGHT+IFgZkQKXEGI0zr8suZtoCT3ptK8jQV+R0NwV2d+ma9uGJdI4UcF2tqPcOt5L+GBQ7FTCqUEAw==
X-Received: by 2002:a05:6870:2391:b0:2e8:f5d4:607f with SMTP id 586e51a60fabf-30b679e6090mr7834276fac.26.1754399518423;
        Tue, 05 Aug 2025 06:11:58 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZe2b9CgU5CgsNcfhp3GzMq2N/zErHhAvpwcBG4Ct6FhHg==
Received: by 2002:a05:6870:c0ce:b0:30b:d237:4ffd with SMTP id
 586e51a60fabf-30bd2382f78ls147133fac.1.-pod-prod-04-us; Tue, 05 Aug 2025
 06:11:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXvucJGKOdEy8sgh+Y/gOnGnX11fdcFm/bVfsVLcboO5F2pMZRDREGttXiKzJspEaHQ4tpk1MsFhd2Z@googlegroups.com
X-Received: by 2002:a05:6871:538f:b0:30b:522a:71af with SMTP id 586e51a60fabf-30b6793c14cmr7197451fac.20.1754399513996;
        Tue, 05 Aug 2025 06:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754399513; cv=none;
        d=google.com; s=arc-20240605;
        b=ZMILsnPLwH5LJ8XolRzB1DwFm/se8+uy/qRds0YW6YAOI38eVCdGUY/A/EC5v/DG+4
         bY0WJP9FqHydImPjj4UeqfaVPieQBC/4NG5CBUHGJyPZHfpP66IoaKr1dsJVSI5yvznn
         kCpZ/fucDDh4QXZCKJ+uFPHXq1IWmKQd/eZkP/7RLr2AiwcFqDFn+HmxjpDGx2L+hbnF
         pQnM4vT4M2wMAhHnqqTYteTFk28a747iUFQVeeNSl9wwKIPnpmWwXApZYGzrzuNiEQGm
         OJgehYdUt7K1xhDpMxg8flm6dZ62Xic7mL1abLMOWFGEFwiq88yI7kYxO3qC6Th+fMjD
         C+Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gxhbKXRRLjSQfOIlTPJ9oH+M0wEhA62psbGR9oUrM1k=;
        fh=2yEtFTPYIM0nRV4I4FC5gmUOYbsZ+jAkF5b50u5pIKI=;
        b=OvtUpLKsQqYl80Ba5IELtn3XOjYruAdZDBDeMkbgPnKVIvjtK7xGDIRep+5yVHNPFd
         9DS+nLlBkc7pf0QS5Wc7PNwH8K8VKNNTNgU1TBIhiFi+G7j7c2FpsV0uUlBqfDGOUu0j
         hy96MgKADlO/3SdDAKm/CS8gxl8J83m/7SSAw2TuK9sIPs+pYt5hXL7PM/6mrYDt9uRJ
         Iax9k1hH/brdJWjCcrt3r0oIC9F131s6XRumsq0ReyC+3wjBDzq9ifS91wgQmfHXdttt
         NU0owfRY2MkVMlth3TFUH5SjYp1hcVnt9zQz3SeSIJ+1PrvvUm+Dd1Co8D5vQO5wvGk7
         GD9Q==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KeX1sK3h;
       spf=pass (google.com: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by gmr-mx.google.com with ESMTPS id 586e51a60fabf-30bbb359537si124497fac.3.2025.08.05.06.11.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 06:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 66E27459A1;
	Tue,  5 Aug 2025 13:11:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BF1DC4CEF0;
	Tue,  5 Aug 2025 13:11:51 +0000 (UTC)
From: "'Sasha Levin' via open-iscsi" <open-iscsi@googlegroups.com>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Showrya M N <showrya@chelsio.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Chris Leech <cleech@redhat.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	lduncan@suse.com,
	michael.christie@oracle.com,
	James.Bottomley@HansenPartnership.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 6.16-5.4] scsi: libiscsi: Initialize iscsi_conn->dd_data only if memory is allocated
Date: Tue,  5 Aug 2025 09:09:31 -0400
Message-Id: <20250805130945.471732-56-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805130945.471732-1-sashal@kernel.org>
References: <20250805130945.471732-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.16
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KeX1sK3h;       spf=pass
 (google.com: domain of sashal@kernel.org designates 172.234.252.31 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Sasha Levin <sashal@kernel.org>
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Showrya M N <showrya@chelsio.com>

[ Upstream commit 3ea3a256ed81f95ab0f3281a0e234b01a9cae605 ]

In case of an ib_fast_reg_mr allocation failure during iSER setup, the
machine hits a panic because iscsi_conn->dd_data is initialized
unconditionally, even when no memory is allocated (dd_size == 0).  This
leads invalid pointer dereference during connection teardown.

Fix by setting iscsi_conn->dd_data only if memory is actually allocated.

Panic trace:
------------
 iser: iser_create_fastreg_desc: Failed to allocate ib_fast_reg_mr err=-12
 iser: iser_alloc_rx_descriptors: failed allocating rx descriptors / data buffers
 BUG: unable to handle page fault for address: fffffffffffffff8
 RIP: 0010:swake_up_locked.part.5+0xa/0x40
 Call Trace:
  complete+0x31/0x40
  iscsi_iser_conn_stop+0x88/0xb0 [ib_iser]
  iscsi_stop_conn+0x66/0xc0 [scsi_transport_iscsi]
  iscsi_if_stop_conn+0x14a/0x150 [scsi_transport_iscsi]
  iscsi_if_rx+0x1135/0x1834 [scsi_transport_iscsi]
  ? netlink_lookup+0x12f/0x1b0
  ? netlink_deliver_tap+0x2c/0x200
  netlink_unicast+0x1ab/0x280
  netlink_sendmsg+0x257/0x4f0
  ? _copy_from_user+0x29/0x60
  sock_sendmsg+0x5f/0x70

Signed-off-by: Showrya M N <showrya@chelsio.com>
Signed-off-by: Potnuri Bharat Teja <bharat@chelsio.com>
Link: https://lore.kernel.org/r/20250627112329.19763-1-showrya@chelsio.com
Reviewed-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

Now I see the pattern clearly! When `iscsi_alloc_conn` is called with
`dd_size = 0`:
- It allocates only `sizeof(*conn)` (no extra space)
- It sets `conn->dd_data = NULL` (because dd_size is 0, the condition
  `if (dd_size)` is false)

But in the original code in `iscsi_conn_setup()`, it was unconditionally
setting:
```c
conn->dd_data = cls_conn->dd_data + sizeof(*conn);
```

This would set `conn->dd_data` to point past the allocated memory when
`dd_size = 0`, leading to the panic when the iSER driver tries to
dereference it in `iscsi_iser_conn_stop()`.

**Backport Status: YES**

This commit should definitely be backported to stable kernel trees for
the following reasons:

1. **Critical Bug Fix**: This fixes a kernel panic/crash that occurs
   during iSCSI/iSER connection teardown when memory allocation fails.
   The panic trace shows a page fault at address `fffffffffffffff8`,
   which is clearly an invalid pointer dereference.

2. **Real-World Impact**: The bug triggers when `ib_fast_reg_mr`
   allocation fails during iSER setup, which can happen under memory
   pressure. This leads to a system crash during error recovery, turning
   a recoverable allocation failure into a fatal kernel panic.

3. **Small and Contained Fix**: The fix is minimal - just adding a
   single conditional check:
  ```c
  if (dd_size)
  conn->dd_data = cls_conn->dd_data + sizeof(*conn);
  ```
  This only affects the initialization path when `dd_size = 0`.

4. **No Architectural Changes**: This is a straightforward bug fix that
   doesn't introduce new features or change any architecture. It simply
   prevents setting an invalid pointer when no driver-specific data is
   allocated.

5. **Clear Root Cause**: The issue is well-understood: when drivers like
   iSER pass `dd_size = 0` to `iscsi_conn_setup()`, the code was
   unconditionally calculating a pointer past the allocated memory.
   During teardown, accessing this invalid pointer causes the panic.

6. **Minimal Risk**: The change only affects the case where `dd_size =
   0`, which is specifically the iSER driver's usage pattern. Other
   drivers that pass non-zero `dd_size` values are unaffected.

7. **Follows Stable Rules**: This meets all stable kernel criteria:
   - Fixes a real bug that users can hit
   - Fix is already upstream (has proper sign-offs and review)
   - Small change (2 lines)
   - Obviously correct
   - Doesn't add new features

The commit prevents a kernel panic during error handling in the
iSCSI/iSER subsystem, making it an important stability fix that should
be backported to all maintained stable kernels that include the iSER
driver.

 drivers/scsi/libiscsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 392d57e054db..c9f410c50978 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3185,7 +3185,8 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		return NULL;
 	conn = cls_conn->dd_data;
 
-	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
+	if (dd_size)
+		conn->dd_data = cls_conn->dd_data + sizeof(*conn);
 	conn->session = session;
 	conn->cls_conn = cls_conn;
 	conn->c_stage = ISCSI_CONN_INITIAL_STAGE;
-- 
2.39.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/20250805130945.471732-56-sashal%40kernel.org.
