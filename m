Return-Path: <open-iscsi+bncBCYMVIPVXQMBB5OF3ORAMGQEJ2N5UNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 638406F94F5
	for <lists+open-iscsi@lfdr.de>; Sun,  7 May 2023 01:30:00 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id a1e0cc1a2514c-779b925715esf2378681241.3
        for <lists+open-iscsi@lfdr.de>; Sat, 06 May 2023 16:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683415799; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELCmjUd3c9SsC2wa/wlco+3bknOWxdy0SgBIf/pxSM2Fde6961Cirk5EzA2FaOzxTi
         YmdpUQXT2F21Jjr8qoTDLcuM5RS5vgp2qJCu63AHDrfrR3YEdkq03neTVmV75N1u5BaF
         sFGoay4Gmpt1imk1Sll82ekb+aCTVg2shJWl6EPkepoLGLD34LI2lEapWxNj/6USWGmy
         S7neC0sMWVNQSZrekarrCqHTmMOh9UHtSTgCe87qOk1127vAk2h9elWs7Y6wnQ0XZubc
         3YC5gzClpBkOBbbDx9JB93nBtoUYq+OfMa6AhpMvZjiGdmkNN2TlgDwHkDCx0Gvw011k
         QUjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=3/9JBZlhUXR22uZlGlSBRJ5TkhycgfbcK8BzK2XSgtw=;
        b=SOQRtE/ZPtmV86JpJuG0BcnKOS1+IDycA/KpkQCtYKVgiesUgg277ZXNU50Dn51men
         6ASM2MCRgWxP5W7q7XfdT3s74EN59owdBthPUCY5rRioUXC/kC/4FmrUf82+nWP9wg2A
         i5p+I36PweKLtkh/FlqUJNUKLcdAlxHqKhjJabq1kPr0DaOVXKDX8H7Lglr0gjgGLJJc
         DhY8fUZUwcoI2cTG6O2Mp/ie6a/AztHvaJ3LteZR8ij8fdh60+FSJUyt2GLI/+ILYCC4
         4s2GAKkQwGdF7gDdiXm5eIZHfY2TrRLqmak8g8DLHVnV1jAbQ2kOtjT9ea+uAx5hihuH
         WR8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MD3GQg6m;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683415799; x=1686007799;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/9JBZlhUXR22uZlGlSBRJ5TkhycgfbcK8BzK2XSgtw=;
        b=sgy4iQ8d1+hicomGCiAmHIX/jWCdw0GfAyE6t1xel6KxozstuIo0Q7If8oA4f+cIxh
         o3haaOXiDWx/OtUJkSkt3sXp2fKfYmofdtpLFMg/Yekht+hITb2D/kXq7g5tOSsxnnmQ
         oHk+SEaJeRgJ4jnPh9yHbN3+AUnjQAeon6W5hyIy7Gg7kOpX3SP7ZPsnCFhMp+XrNtF+
         oPLtaaVjLBh8yiX/1aJOKi//MszvpwqEYFpCVTOvyN4k/LExX27xT6dyyStpSYxRBrsE
         SpQy1JSJ0INQm03X2/CplobYC0mPOVHA2akDBobbGShOn9BHdLwjqk4zCI5BhPzoXGqp
         BA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683415799; x=1686007799;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3/9JBZlhUXR22uZlGlSBRJ5TkhycgfbcK8BzK2XSgtw=;
        b=ZZ3WDp3wWZCQ3AM2EVbv+EOZJ8uv76zFWqG+yHQRXD+Fi6oQQMnfI3Tc2ocKo/wvHh
         +RlOJ50YZ5O8kR3gBm4k+QA41PgVvlZkLhRr6LMHsNJFfxuoEReSrL3QEq8GwhgcyrfL
         /Bg53BjnLsSTetV/Lm+6kIB/QkDia8gWc4urOIeP1ALcHA/PHgovB4r7NR9eXhJMXy5w
         fTOZ0WMJ2woxKBuFTCwGZJdKEyINgOJ0WTRLT01p2FpzzfOsxj8XO6Rj3oGlyr5Jxnys
         R1JrkO+7/0uhr9LUPGFOGjpUqqK5yFK3XNjHLOz7tFv5OQS1wCjiJdatrN2QiV0j4M+0
         rtpA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDx1cZ22Qqv0OVpYtyCUAEdobVSnRJXB0E6AwU0tzp8oGJk/RoTH
	ZA1Kk+OYPDEL5GPF6w6Eg3A=
X-Google-Smtp-Source: ACHHUZ6okiuM4mEBAB1K+l29nb1F5P96EHKjZiaMTvFl8tbz5Tfnj8lwzjljNjWdzRwJNugkmGEe5Q==
X-Received: by 2002:a67:d28b:0:b0:434:62ff:1e76 with SMTP id z11-20020a67d28b000000b0043462ff1e76mr3457059vsi.0.1683415798987;
        Sat, 06 May 2023 16:29:58 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:370e:b0:42e:5faa:fb58 with SMTP id
 s14-20020a056102370e00b0042e5faafb58ls6061726vst.11.-pod-prod-gmail; Sat, 06
 May 2023 16:29:57 -0700 (PDT)
X-Received: by 2002:a05:6102:2825:b0:42f:f146:df2a with SMTP id ba5-20020a056102282500b0042ff146df2amr1906097vsb.27.1683415797154;
        Sat, 06 May 2023 16:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683415797; cv=none;
        d=google.com; s=arc-20160816;
        b=vtPtfJKXcKCPwDiIKraz7qbaFwy3rgXrP7AzBzPHsFvWkbFXGPa3IeCKob9dAvF7Qi
         Jc9Qu7qpnQhZDo5CDWcNfVFREuv4hELjSq1MZTRfwl54L4P/Yp76BHvivMJbDAsF25P+
         2423HWryP2Zh2A7SYIG1HfPvqhQhXG0RhxQdB8hZ37eQq6vd/vUe195U4ysIdUxMtHYu
         LA+VS1G1yLltg5Hb/YzGTtQRzS183olwskm23/NbUjn0YUDeda7WIW5Pm4vJYrUsIjQR
         2jyMt9g3Y09Het9hxmBYR8EsCtBEACpahIBvZUol4D+h4KHoo5OCTscYUW8zck3DZbxD
         gKYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VPtwiHRcbAtbIWptlNsxTdMycjSDQHYcwJb296c1nk0=;
        b=rUZtjov8MsZysryZWRnZjorFfzpzUZpWA7k/xwMCZnZ5S6EfrEUtOjbSmc7PEIdMMY
         zwnPFLVqtlML7rdFVD1ZPK1VPzDcPB3oJkRB0Bc0quWGVc6ZaWHIblChV4admZCbdxRi
         8svfor17rztmiqiyNfAfvsaSPkShCm2+iERgp5EX5bZljz9D2AA5D7CZgkgumxCky50o
         fjTzGP3UBUlux9IsV0XnFYTy6MtSA6H+zuuWqGqLHbp0VM5UfRSbdq/bGZN5sosECxHg
         NMcHbYNByeHlJ7mX9KH8yq9mjE+rVDHjz0izqXccl8awTVejHU3yEncES2y3SpBSfZYe
         OBWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MD3GQg6m;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id x36-20020a05613000a400b0077df1137736si353178uaf.0.2023.05.06.16.29.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 May 2023 16:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-557-MQrfL2ArNjiUACkwMXTBEg-1; Sat, 06 May 2023 19:29:53 -0400
X-MC-Unique: MQrfL2ArNjiUACkwMXTBEg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F14B129ABA00;
	Sat,  6 May 2023 23:29:52 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.2.16.10])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 66FCD440BC;
	Sat,  6 May 2023 23:29:52 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: Lee Duncan <lduncan@suse.com>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH v2 00/11] Make iscsid-kernel communications namespace-aware
Date: Sat,  6 May 2023 16:29:19 -0700
Message-Id: <20230506232930.195451-1-cleech@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MD3GQg6m;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

This set of patches modifies the kernel iSCSI initiator communications
so that they are namespace-aware. The goal is to allow multiple iSCSI
daemon (iscsid) to run at once as long as they are in separate
namespaces, and so that iscsid can run in containers.

Container runtime environments seem to want to containerize their own
components, and there have been complaints about the need to run iscsid
from the host network namespace. There are still priviledged
capabilities needed for iscsid, but these changes address the namespace
issue.

I've tested with iscsi_tcp and iser over rxe with an unmodified iscsid
running in a podman container.

Note that with iscsi_tcp, the connected socket will keep the network
namespace alive after container exit. The namespace will exit once the
connection terminates, and I'd recommend running with a iSCSI
noop_out_timeout set to error out the connection after the routing has
been removed.

v2: Changes from Lee's last RFC posting
- Minor changes to patches 2 & 3 to not break iSER

- Large changes in patch 6, merging in patches posted to the previous
  discussion. Use of current when setting the netns on an iscsi_tcp
  session has been removed, instead an unbound (from a host) session
  creation with an explicit netns interface has been added. Similar
  changes for iSER endpoints have been added, and iSER support for
  non-default network namespaces was enabled.

- The addition of patches 10 & 11 from the previous discussions to force
  removal of sessions on namespace exit.

Chris Leech, Lee Duncan (11):
  iscsi: create per-net iscsi netlink kernel sockets
  iscsi: associate endpoints with a host
  iscsi: sysfs filtering by network namespace
  iscsi: make all iSCSI netlink multicast namespace aware
  iscsi: check net namespace for all iscsi lookup
  iscsi: set netns for tcp and iser hosts
  iscsi: convert flashnode devices from bus to class
  iscsi: rename iscsi_bus_flash_* to iscsi_flash_*
  iscsi: filter flashnode sysfs by net namespace
  iscsi: make session and connection lists per-net
  iscsi: force destroy sesions when a network namespace exits

 drivers/infiniband/ulp/iser/iscsi_iser.c |  61 +-
 drivers/scsi/be2iscsi/be_iscsi.c         |   6 +-
 drivers/scsi/bnx2i/bnx2i_iscsi.c         |   6 +-
 drivers/scsi/cxgbi/libcxgbi.c            |   6 +-
 drivers/scsi/iscsi_tcp.c                 |  15 +-
 drivers/scsi/libiscsi.c                  |  16 +
 drivers/scsi/qedi/qedi_iscsi.c           |   6 +-
 drivers/scsi/qla4xxx/ql4_os.c            |  64 +-
 drivers/scsi/scsi_transport_iscsi.c      | 790 ++++++++++++++++-------
 include/scsi/libiscsi.h                  |   4 +
 include/scsi/scsi_transport_iscsi.h      |  75 ++-
 11 files changed, 725 insertions(+), 324 deletions(-)

-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230506232930.195451-1-cleech%40redhat.com.
