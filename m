Return-Path: <open-iscsi+bncBC755V5RXMKBBE5OZ7XQKGQEHFQAG7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C29711EA19
	for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 19:23:17 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id n128sf216748qke.19
        for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 10:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=j2FeTcye6cCDNXkj7tSGI5lYw8qafzQDrD8pXcQE95A=;
        b=B8NmBUv9MPWtzBVpSmFwhTt9fpsP1rNCHu0/cWTx/trNBiXttVR/16C1ypXdi4Fvz4
         XiYYdzAFC3vS8PZApuTL155K8VceZ3EPsWJ630xEBp7Q9A6xAoMpn0pW0OnMrAXhd1ZC
         O8wb/LzVPwQfJi5cbNXV+vy6NkeddHCmldHkVdnaKbRiRhK7vrJf6zzplOGHj1drQFbx
         +zFBWtvW/d41hXlDdl9//ur7JPM4sZtgOzeBK4YDb44sPvaS4ao5XT5RFsn2+xeKPOfo
         +rEA/4oM2dCxGd5aoRsCUeN+3AeDnaSKHQxOxdVGLyLnv+muBb/co2Qy7FggEjGhT9TI
         im1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j2FeTcye6cCDNXkj7tSGI5lYw8qafzQDrD8pXcQE95A=;
        b=VrB4+Dg5m4p+gnMNb9Zt2qPtEWTHjKVs9ZNCp0IOAwdlTqtK54/G4OffaG+JhdXXGT
         CrwY+55z5mbEcdFxcLqliJ4FkG1MCqKMabC1DoPxrc4EspTtmYCiyQ24gSnz0ZKtTrru
         /HLHk9I5veiwitJRDwXjnH+lIhTjRp6pE4KdmI0dR/se9B41DBBxkpyeUJWtXExE95Rj
         r8IwHfbM3q6zLuOSuh2d8vj0NVyQLeeSmSjL7eEanLvnD8tXdKSMXP94bNZM6CdDIa57
         Scku3jt7c7yR8tC1RfgFUeJriZzka1gQzvZL/KWxTAz1qbE5R4rxSUn7st/tKxgrgPq2
         8y7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j2FeTcye6cCDNXkj7tSGI5lYw8qafzQDrD8pXcQE95A=;
        b=c0Mlu17snq0wypk7i8sE6iuHWfv6xJme6fc18/+0nFsJqxDqWee60pt6RXMv7RVJex
         ZzThers5aUr6AL2cCk3nYfNnVI+1AACdooy1Vt13oNC1T/KM+OFdgL9u6ogKa9NEbXlU
         NyKjZE8kP+WnFqZlpxCw+5aZM2VGUD2pPTkykzJOmE82RLGiE3+OSJd+Q3qwyeOX0Zte
         rqnvnwqTV7mb3ONZL1rgNqQrQvoC1z4lEECdm9ctAVdKnI8iimmDjiQM9QIIlJqyxlcs
         6wB8vCiG0lg6fTDF5JeElM1zI3EboL5/WIy6D/6NSMvKlDFQgCjy/Y9iBAr7inBnotzD
         baRw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW/jsS+/83jvNNYp7flLWE/2f41AjT5zn5v51miPF6icN0eecxj
	1iuTbtRQKARUv90xfuZJkMo=
X-Google-Smtp-Source: APXvYqxX3+8nqWGhohPCyse4c6VpPfPFbrS0QkoTOHu8MkD2vBi8SimNKF/pvUJ502P8zNB6/vCotQ==
X-Received: by 2002:ac8:23cd:: with SMTP id r13mr13704595qtr.184.1576261395933;
        Fri, 13 Dec 2019 10:23:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1246:: with SMTP id a6ls3261687qkl.5.gmail; Fri, 13
 Dec 2019 10:23:15 -0800 (PST)
X-Received: by 2002:a05:620a:98f:: with SMTP id x15mr14661040qkx.462.1576261395431;
        Fri, 13 Dec 2019 10:23:15 -0800 (PST)
Date: Fri, 13 Dec 2019 10:23:14 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <28683699-a9e8-44e7-be9e-d0bbb4057dc8@googlegroups.com>
In-Reply-To: <7c543bff-009b-5a96-2e66-e75d5b3c7336@huawei.com>
References: <7c543bff-009b-5a96-2e66-e75d5b3c7336@huawei.com>
Subject: Re: [PATCH] Check whether socket is opened successfully in
 find_vlan_dev func
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_404_1135863931.1576261394359"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_404_1135863931.1576261394359
Content-Type: multipart/alternative; 
	boundary="----=_Part_405_2071623217.1576261394359"

------=_Part_405_2071623217.1576261394359
Content-Type: text/plain; charset="UTF-8"

On Sunday, December 8, 2019 at 10:32:54 PM UTC-8, liuzhiqiang (I) wrote:
In find_vlan_dev func, socket should be checked before used. 

Signed-off-by: Zhiqiang Liu <liuzhiqiang26@huawei.com> 
--- 
usr/iscsi_net_util.c | 4 ++++ 
1 file changed, 4 insertions(+) 

diff --git a/usr/iscsi_net_util.c b/usr/iscsi_net_util.c 
index b5a910f..c38456f 100644 
--- a/usr/iscsi_net_util.c 
+++ b/usr/iscsi_net_util.c 
@@ -192,6 +192,10 @@ static char *find_vlan_dev(char *netdev, int vlan_id) 
{ 
int sockfd, i, rc; 

sockfd = socket(AF_INET, SOCK_DGRAM, 0); 
+ if (sockfd < 0) { 
+ log_error("Could not open socket for ioctl."); 
+ return NULL; 
+ } 

strlcpy(if_hwaddr.ifr_name, netdev, IFNAMSIZ); 
ioctl(sockfd, SIOCGIFHWADDR, &if_hwaddr); 
-- 
2.24.0.windows.2 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/28683699-a9e8-44e7-be9e-d0bbb4057dc8%40googlegroups.com.

------=_Part_405_2071623217.1576261394359
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sunday, December 8, 2019 at 10:32:54 PM UTC-8, liuzhiqi=
ang (I) wrote:<br><div style=3D"margin-left: 40px;">In find_vlan_dev func, =
socket should be checked before used. <br> <br>Signed-off-by: Zhiqiang Liu =
&lt;<a href=3D"mailto:liuzhiqiang26@huawei.com">liuzhiqiang26@huawei.com</a=
>&gt; <br>--- <br> usr/iscsi_net_util.c | 4 ++++ <br> 1 file changed, 4 ins=
ertions(+) <br> <br>diff --git a/usr/iscsi_net_util.c b/usr/iscsi_net_util.=
c <br>index b5a910f..c38456f 100644 <br>--- a/usr/iscsi_net_util.c <br>+++ =
b/usr/iscsi_net_util.c <br>@@ -192,6 +192,10 @@ static char *find_vlan_dev(=
char *netdev, int vlan_id) { <br>         int sockfd, i, rc; <br> <br>     =
    sockfd =3D socket(AF_INET, SOCK_DGRAM, 0); <br>+        if (sockfd &lt;=
 0) { <br>+                log_error(&quot;Could not open socket for ioctl.=
&quot;); <br>+                return NULL; <br>+        } <br> <br>        =
 strlcpy(if_hwaddr.ifr_name, netdev, IFNAMSIZ); <br>         ioctl(sockfd, =
SIOCGIFHWADDR, &amp;if_hwaddr); <br>-- <br>2.24.0.windows.2 <br></div> <div=
><br></div><div>Reviewed-by: Lee Duncan &lt;lduncan@suse.com&gt;<br></div><=
/div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/28683699-a9e8-44e7-be9e-d0bbb4057dc8%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/28683699-a9e8-44e7-be9e-d0bbb4057dc8%40googlegroups.com</a>.<b=
r />

------=_Part_405_2071623217.1576261394359--

------=_Part_404_1135863931.1576261394359--
