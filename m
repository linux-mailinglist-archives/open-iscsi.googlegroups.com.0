Return-Path: <open-iscsi+bncBCOPRU4C2YDRBMVVXD5QKGQEKHRCE7A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A9724278E69
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 18:28:35 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id n16sf1479145oov.17
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 09:28:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601051314; cv=pass;
        d=google.com; s=arc-20160816;
        b=XogFREeNMJkQ+Z3AVcCjFAlSdnNvwtrmBeiSkqlN0MSefAiLeKIfY0Du2ltohowb2p
         tGPwufRrY8bAJYn7CFee1n0icApFKoW/IgHAY//PFruIheQD4KhL7k/NWEiRbx84oTI5
         XBKVZdbYFE82nmp/QErk3slwWYsSN+8OCIlb3SjVH5Bemz3K6ipcjYp5Jo+JIBz+fNQj
         WpLxhHnRZucn6qReFcFFRFI/JcX/MP0TnrgEpz+FF5AVxn+MBaTue/hoIGJIS1pBpxKb
         zv537F0ZFK3RCQqcj+D5KXuFTkKGb58weKiAfFk4NHrX5jj3IVeKJDhwIJd2WS5vaxBg
         Hq5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=6LhkGX4NSg+/y6Xn4/3uzzlodsqtxEH38qUrAZGe/fw=;
        b=TYCbTeWq6D3ZctsTLy5ilYK61K1XQzKnXO8dmbrcrSpAGfbuKOE9HZO5Vpe69fAUsK
         6bIeOxcx6XNrEJZ4BHoBMyBs6xeXwRiPGJbpJm9qbkObcwC2/1axPg9a50b059ft+HLr
         gT2Y+6icsaMVENmEHT6PZRjnr9F8eWnSqvCSd6uuaFop/K7LzcWjdBFah6QipCf0eamU
         ygfffFZBaMzq+Tb0Fpekmv9xZb23vifyjjhYFJAvmWm4+P9yWAXD3RtLddPM273/6N9K
         a2K6nM+AIgZxUwerVRZloNgnNqrxlCkOCVLUAuulkODnFx9EPWEFv9vO8HAvGs6UwB8f
         G4bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 111.125.192.187 is neither permitted nor denied by best guess record for domain of jitendra@mybox.localdomain) smtp.mailfrom=jitendra@mybox.localdomain;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LhkGX4NSg+/y6Xn4/3uzzlodsqtxEH38qUrAZGe/fw=;
        b=SXJDhqLX0Y6e4HqHsrIxKr5W5E67HHq6kW2uNt5m0/+Y3+7gydn+UD0B/LuMYpNfLX
         hxUhG4oTXpBJSoyoCgI4oyQOgxhw0HAODKRQTG/oJ46aSFkhELNk4HUVI+w7NiTnuktv
         41BgA0l4+/irIrClWp/Lg/e1ZQvYbDiK341j7ee2zrtsaE0dy8uSDoxqiEkWQKxUTqBQ
         wmA6NRVjoIjQyedWkiZwDi11208CCJWLBvKOT6AfIKDga/iTAxFiJWlG27+em6YaVeTL
         occqhiMCtrQo81mKTXKOVdp5DEQO8sUaBZTvbe2mGFSiF7mjFiuSHucF0XbpYRH64TUE
         Yi9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6LhkGX4NSg+/y6Xn4/3uzzlodsqtxEH38qUrAZGe/fw=;
        b=E71O6jycwmttGI7gKfBDtyRaLjbIMfpAFTAIm2FLvrSALzk4f33hnlnxuUBFisE7XU
         poAmcjxnPz9Ttn17aEcpZTH+XmpY4XYq/3EKW96LF1i3IKAH8RTVeIeXdmyPpPdVodJo
         hIq4L+5mvkyUto3Lv2aYRywIATF46vR0O2pRdJcunfTVTXa1TBauhcJJzC4XnGrwgk/a
         BtKrrQJBReTdYmxBCnIPemie2aL5h81FBUhvH29U8mt64vYQWHV26HILulgFLRTH/rmk
         yv5wcGmpkEXKKX0Zolu6MI+P6kG6MpIgTPa3s2pvyvD6dV4yvOyG+8gIqcA4hO8C8Wbk
         R77A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532o/K1C0kW1vREFpOc6iPzXKkWT5hT+k5WGQHRJTx6GQWzzS0LJ
	fxuawMSa9+M/5v6AKddmIBs=
X-Google-Smtp-Source: ABdhPJyvH75sRDlVk1HDnLtVMc2uuXN3UdZWwhIzHlFEyWuVmBMiVVwzcw4SVQZ1izCeaCTgSVxvaQ==
X-Received: by 2002:a54:4f9e:: with SMTP id g30mr71917oiy.81.1601051314661;
        Fri, 25 Sep 2020 09:28:34 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls864911otk.2.gmail; Fri, 25 Sep
 2020 09:28:34 -0700 (PDT)
X-Received: by 2002:a9d:69ce:: with SMTP id v14mr872037oto.11.1601051314288;
        Fri, 25 Sep 2020 09:28:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601051314; cv=none;
        d=google.com; s=arc-20160816;
        b=fy/ajqzQNzZv8Yc/b+Vibpp3yqZlC6Nx6VukAIXbes/BydhlBOr7jvOuDnO72dCTke
         O+SBmJdE9G0Z1kekdQSgU3CrCDREgJTP2DE/yNYTkyOYZFDKltDvxjpUHoNo6GkwaFu8
         RoVoK9RuzG/KFU8/xBzHQBvC/RNR5zw0HG3p0STgn9sycrpLcsAURcj9lZtqCIo0IeI9
         NsyIvFNAsHgEea5IOD93xzqBE1Amndd/teh3LwVtI+QfzS6ocmjhZ6vjADTn6wEqzGQx
         Tre9h0ZVgH5VWu53bTqZkhIgeOJgFvlTIHtSowcEa1QrioGtE6+/v/caCwB3Z4gwmCIL
         SkpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=nhjLNREQC/wcp1nx5gUGa7C4snpX7JK8Vr8M4NrkTkc=;
        b=DDm9EtERK3W2U71qJRKLQ3L8Mvg9agYU6BUACYacyKQYJ94xzvbuJKEKPA3rSzqBX6
         shAhyftt9TKriDmZQUZVPe80MTAexPDMMUYBg6aB07nZWSPyQwvu/HuMtwCtlP9KHEaQ
         BaaaFJL3aLEGMGM7U169hbUJjgn2R6Q68XtLOOPvJn+MXqBuYSMIYovLgcN1kFcyvpQx
         2JXm59Oo4WR0GR1+9RAvDwqmqmUfiVorb+qxyJWNPwsE80FVxIMSbVzWuEmsvHIO1H67
         py3XDCvjSe3PBMZkvkV4sQe0uWulv8b5md0V/Iqu78rqZV5r5hQV2rkwXGhcpdalulLx
         KSmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 111.125.192.187 is neither permitted nor denied by best guess record for domain of jitendra@mybox.localdomain) smtp.mailfrom=jitendra@mybox.localdomain;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mybox.localdomain ([111.125.192.187])
        by gmr-mx.google.com with ESMTP id b12si12933ots.3.2020.09.25.09.28.33
        for <open-iscsi@googlegroups.com>;
        Fri, 25 Sep 2020 09:28:33 -0700 (PDT)
Received-SPF: neutral (google.com: 111.125.192.187 is neither permitted nor denied by best guess record for domain of jitendra@mybox.localdomain) client-ip=111.125.192.187;
Received: by mybox.localdomain (Postfix, from userid 1000)
	id AD24236DFE0; Fri, 25 Sep 2020 21:58:29 +0530 (IST)
From: Sonu k <sonukumar159842@gmail.com>
To: open-iscsi@googlegroups.com,
	leeman.duncan@gmail.com
Cc: sonukumar159842@gmail.com
Subject: [PATCH] TODO: Update to todo list.
Date: Fri, 25 Sep 2020 21:58:22 +0530
Message-Id: <1601051302-31762-1-git-send-email-sonukumar159842@gmail.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: sonukumar159842@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 111.125.192.187 is neither permitted nor denied by best guess
 record for domain of jitendra@mybox.localdomain) smtp.mailfrom=jitendra@mybox.localdomain;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch is to update the todo list. Tasks are suggested by The
Lee-Man

Signed-off-by: Sonu k <sonukumar159842@gmail.com>
---
 TODO | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/TODO b/TODO
index 7328180..a3d1d91 100644
--- a/TODO
+++ b/TODO
@@ -377,3 +377,16 @@ I am working on this one. Hopefully it should be done soon.
 it gets out of sync with the kernel version, and that's not good.
 
 ---------------------------------------------------------------------------
+
+13. Node database
+
+Current implementation of node data is not scalable. It handles database using
+some bunch of files and directories. It has not locking and can not handle
+thousands of targets.
+
+---------------------------------------------------------------------------
+
+14. Migration of duplicate functionality out of iscsid/iscsiadm into libopeniscsi
+and add better error handling .
+
+---------------------------------------------------------------------------
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1601051302-31762-1-git-send-email-sonukumar159842%40gmail.com.
